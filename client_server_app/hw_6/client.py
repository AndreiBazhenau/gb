from socket import socket, AF_INET, SOCK_STREAM
import argparse
import time
import random
from random import randrange
from utils import read_config, send_message, get_message
import logging
import log.client_log_config
from log.log_decorator import log


CLIENT_LOGGER = logging.getLogger('log_client')


@log
def create_msg():

    presence = {
        "action": "presence",
        "time": time.time(),
        "account_name": "C0deMaver1ck",
        "status": "online",
    }

    authenticate = {
        "action": "authenticate",
        "time": time.time(),
        "account_name": "C0deMaver1ck",
        "password": '0123456789',
        "status": "Yep, I am here!",
    }

    message = {
        "action": "message",
        "time": time.time(),
        "account_name": "C0deMaver1ck",
        "message": f'Message: {randrange(10)}',
    }

    msg_lst = [presence, authenticate, message]

    return random.choice(msg_lst)


@log
def handle_response(message):
    """
    Обработка сообщения

    """
    if message['response'] == 200:
        print('Connection successful')
        CLIENT_LOGGER.info('Response 200. Connection successful')
        return '200: OK'
    if message['response'] == 400:
        print('Connection not successful')
        CLIENT_LOGGER.warning('Response 400. Connection not successful')
        return '400: Error'

    CLIENT_LOGGER.error('Wrong "response" parameter in the server response')
    raise ValueError


def main():

    CONFIG = read_config()

    # парсим параметры запуска
    try:
        parser = argparse.ArgumentParser(description='address & port')
        parser.add_argument('addr',
                            type=str,
                            help='input server ip address',
                            default=CONFIG.get('DEFAULT_IP_ADDRESS')
                            )
        parser.add_argument('port',
                            type=int,
                            help='input server port',
                            default=CONFIG.get('DEFAULT_PORT')
                            )
        args = parser.parse_args()
        ip_address = args.addr
        port = args.port

    except SystemExit as e:
        ip_address = CONFIG.get('DEFAULT_IP_ADDRESS')
        port = CONFIG.get('DEFAULT_PORT')
        CLIENT_LOGGER.info(f'{e}: IP & port are not specified. Used default')

    CLIENT_LOGGER.warning(f'Starting client {ip_address}:{port}')

    while True:
        # Создаем сокет TCP для приёма соединений по сети
        s = socket(AF_INET, SOCK_STREAM)

        # Соединиться с сервером
        s.connect((ip_address, port))

        # формируем запрос к серверу
        presence_msg = create_msg()
        CLIENT_LOGGER.info(f'Message {presence_msg} was created')

        # отправляем на сокет сообщение
        send_message(s, presence_msg, CONFIG)
        CLIENT_LOGGER.info(f'Message {presence_msg} was sent to the server')

        try:
            response = get_message(s, CONFIG)
            CLIENT_LOGGER.info(f'Server response: {response}')
            handled_response = handle_response(response)
            CLIENT_LOGGER.info(f'Server handled response: {handled_response}')

        except Exception as e:
            CLIENT_LOGGER.warning(f'{e}: error of server response processing')

        time.sleep(2)

        # close — закрываем соединение
        s.close()
        CLIENT_LOGGER.info(f'Connection was closed')


if __name__ == '__main__':
    main()
