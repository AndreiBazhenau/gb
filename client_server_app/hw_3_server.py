from socket import socket, AF_INET, SOCK_STREAM
import argparse
import time
import json

parser = argparse.ArgumentParser(description='address & port')
parser.add_argument('addr', type=str, help='input server ip address')
parser.add_argument('port', type=int, help='input server port')
args = parser.parse_args()
print(f'Starting server {args.addr}:{args.port}')

# Создаем сокет TCP для приёма соединений по сети
# коммуникационный домен = AF_INET - создаваемый сокет будет сетевым.
# тип сокета = SOCK_STREAM — определяет сокет как потоковый, т.е.
# реализующий последовательный, надежный двусторонний поток байтов
s = socket(AF_INET, SOCK_STREAM)

# В результате функции socket() создается конечная точка соединения и
# возвращается файловый дескриптор, который позволяет работать с сокетом,
# как с файлом — записывать и считывать данные в/из него. Таким образом,
# константа SOCK_STREAM указывает на то, что сокет работает с TCP-пакетами —
# то есть  это TCP-пакет.

# привязываем сокет к IP-адресу и порту машины
# IP не указываем, чтобы попадать по любому IP. Присваиваем порт 8888
s.bind((args.addr, args.port))

# Переходит в режим ожидания запросов; одновременно обслуживает не более 5 запросов
# listen — просигнализировать о готовности принимать соединения
s.listen(5)

while True:
    # accept — принимаем запрос на установку соединения
    client, addr = s.accept()

    # recv — получаем данные
    data_json = client.recv(10000).decode('utf-8')

    # сериализуем данные
    data = json.loads(data_json)

    if data['action'] == 'presence':
        print('Received presence')

        # формируем ответное сообщение
        presence_msg = {
                        "response": 200,
                        "time": time.time(),
                        "alert": "OK"
                        }
        # сериализуем в json
        presence_msg_json = json.dumps(presence_msg)

        # send — передаём данные клиенту
        client.send(presence_msg_json.encode('utf-8'))

    # close — закрываем соединение
    client.close()
