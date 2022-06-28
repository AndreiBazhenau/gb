import logging
import sys
import os

PATH_DIR = os.path.dirname(os.path.abspath(__file__))
PATH = os.path.join(PATH_DIR, 'logs/client.log')


# Определить формат логов
STREAM_FORMAT = \
    logging.Formatter('%(asctime)s - %(levelname)-10s - %(module)-6s -  %(message)s')
FILE_FORMAT = \
    logging.Formatter('%(asctime)s - %(levelname)-10s - %(name)-10s - %(funcName)-16s - %(message)s')

# Создаём обработчик, выводящий сообщения с уровнем CRITICAL в поток stderr
STREAM_HANDLER = logging.StreamHandler(sys.stderr)
STREAM_HANDLER.setLevel(logging.INFO)
STREAM_HANDLER.setFormatter(STREAM_FORMAT)

# Создать обработчик, выводящий сообщения в файл
FILE_HANDLER = logging.FileHandler(PATH, encoding='utf-8')
FILE_HANDLER.setLevel(logging.INFO)
FILE_HANDLER.setFormatter(FILE_FORMAT)

# Создаём регистратор верхнего уровня
LOGGER = logging.getLogger('log_client')
LOGGER.setLevel(logging.INFO)

LOGGER.addHandler(STREAM_HANDLER)
LOGGER.addHandler(FILE_HANDLER)


if __name__ == '__main__':
    'Smoke test'
    LOGGER.critical('Тестовая критическая ошибка')
    LOGGER.error('Тестовая ошибка')
    LOGGER.info('Тестовое информационное сообщение')
    LOGGER.debug('Тестовая отладочная информация')

