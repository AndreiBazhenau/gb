from socket import socket, AF_INET, SOCK_STREAM
import argparse
import time
import json
from utils import read_config, get_message, send_message


def handle_message(message):
    current_time = time.time()
    if message['action'] == 'presence':
        print(f'Received presence at {current_time}')

        # формируем ответное сообщение
        presence_msg = {
            "response": 200,
            "time": current_time,
            "alert": "OK"
        }

        return presence_msg


def main():

    CONFIG = read_config()
    # парсим параметры запуска
    try:
        parser = argparse.ArgumentParser(description='address & port')
        parser.add_argument('server_ip_address',
                            type=str,
                            help='input server ip address'
                            )
        parser.add_argument('server_port',
                            type=int,
                            help='input server port'
                            )
        args = parser.parse_args()
        ip_address = args.server_ip_address
        port = args.server_port

    except IndexError:
        ip_address = CONFIG.get('DEFAULT_IP_ADDRESS')
        port = CONFIG.get('DEFAULT_PORT')

    print(f'Starting server {ip_address}:{port}')

    # Создаем сокет TCP для приёма соединений по сети
    # коммуникационный домен = AF_INET - создаваемый сокет будет сетевым.
    # тип сокета = SOCK_STREAM — определяет сокет как потоковый, т.е.
    # реализующий последовательный, надежный двусторонний поток байтов
    s = socket(AF_INET, SOCK_STREAM)

    # В результате функции socket() создается конечная точка соединения и
    # возвращается файловый дескриптор, который позволяет работать с сокетом,
    # как с файлом — записывать и считывать данные в/из него. Таким образом,
    # константа SOCK_STREAM указывает на то, что сокет работает с TCP-пакетами —
    # то есть это TCP-пакет.

    # привязываем сокет к IP-адресу и порту машины
    # IP не указываем, чтобы попадать по любому IP. Присваиваем порт 8888
    s.bind((ip_address, port))

    # Переходит в режим ожидания запросов; одновременно обслуживает не более 5 запросов
    # listen — просигнализировать о готовности принимать соединения
    s.listen(5)

    while True:
        # accept — принимаем запрос на установку соединения
        client, ip_address = s.accept()

        try:
            # получаем сообщение от клиента
            message = get_message(client, CONFIG)
            # формируем ответное сообщение на основе сообщения
            response_message = handle_message(message)
            # отправляем ответное сообщение клиенту
            send_message(client, response_message, CONFIG)
            # close — закрываем соединение
            client.close()
        except (ValueError, json.JSONDecodeError):
            print('Received incorrect message from the client')
            client.close()


if __name__ == '__main__':
    main()
