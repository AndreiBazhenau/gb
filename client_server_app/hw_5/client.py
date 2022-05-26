from socket import socket, AF_INET, SOCK_STREAM
import argparse
import time
from utils import read_config, send_message, get_message


def create_presence_msg():

    presence_msg = {
                    "action": "presence",
                    "time": time.time(),
                    "type": "status",
                    "user": {
                            "account_name": "C0deMaver1ck",
                            "status": "Yep, I am here!"
                            }
                    }

    return presence_msg


def handle_response(message):
    """
    Обработка сообщения

    """
    if message['response'] == 200:
        print('Connection successful')
        return '200: OK'
    if message['response'] == 400:
        print('Connection not successful')
        return '400: Error'
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
        print(f'Try to connect to {ip_address}:{port} server')

    except Exception:
        ip_address = CONFIG.get('DEFAULT_IP_ADDRESS')
        port = CONFIG.get('DEFAULT_PORT')

    # Создаем сокет TCP для приёма соединений по сети
    s = socket(AF_INET, SOCK_STREAM)

    # Соединиться с сервером
    s.connect((ip_address, port))

    # формируем запрос к серверу
    presence_msg = create_presence_msg()

    # отправляем на сокет сообщение
    send_message(s, presence_msg, CONFIG)

    try:
        response = get_message(s, CONFIG)
        handled_response = handle_response(response)
        print(f'Server response: {response}')
        print(handled_response)

    except Exception:
        print('Error: server response processing')

    # close — закрываем соединение
    s.close()


if __name__ == '__main__':
    main()
