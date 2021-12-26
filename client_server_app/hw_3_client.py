from socket import socket, AF_INET, SOCK_STREAM
import argparse
import time
import json

# парсим параметры запуска
parser = argparse.ArgumentParser(description='address & port')
parser.add_argument('addr', type=str, help='input server ip address')
parser.add_argument('port', type=int, help='input server port')
args = parser.parse_args()
print(f'Try to connect to {args.addr}:{args.port} server')

# Создаем сокет TCP для приёма соединений по сети
s = socket(AF_INET, SOCK_STREAM)

# Соединиться с сервером
s.connect((args.addr, args.port))

# формируем запрос к серверу
presence_msg = {
                "action": "presence",
                "time": time.time(),
                "type": "status",
                "user": {
                        "account_name":  "C0deMaver1ck",
                        "status":      "Yep, I am here!"
                        }
                }
# сериализуем json
presence_msg_json = json.dumps(presence_msg)

# отправляем данные на сервер
s.send(presence_msg_json.encode('utf-8'))

# recv — получаем данные
data_json = s.recv(10000).decode('utf-8')

# сериализуем данные из строки в словарь
data = json.loads(data_json)

if data['response'] == 200:
    print('Connection successful')

# close — закрываем соединение
s.close()
