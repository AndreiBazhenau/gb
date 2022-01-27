import yaml
import os
import sys
import json


def read_config():

    if not os.path.exists('config.yaml'):
        print('config.yaml не найден')
        sys.exit(1)

    with open('config.yaml') as config_file:
        config = yaml.load(config_file, Loader=yaml.FullLoader)

    return config


def send_message(opened_socket, message, config):
    """
    Отправка сообщения

    :param opened_socket:
    :param message:
    :param config:
    :return:
    """

    # сериализуем сообщение в json
    message_json = json.dumps(message)

    # кодируем сообщение в кодировку из конфига
    message_enc = message_json.encode(config.get('ENCODING'))

    # отправляем запрос на сервер
    opened_socket.send(message_enc)


def get_message(opened_socket, config):
    """
    Получение сообщения

    :param opened_socket:
    :param config:
    :return:
    """
    # получаем закодированные в байтах данные
    response_dec = opened_socket.recv(config.get('MAX_PACKAGE_LENGTH'))

    if isinstance(response_dec, bytes):
        # декодируем байты в json
        response_json = response_dec.decode(config.get('ENCODING'))

        # сериализуем данные в словарь
        response_dict = json.loads(response_json)

        if isinstance(response_dict, dict):
            return response_dict
