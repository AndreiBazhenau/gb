import logging
import sys
import os

PATH_DIR = os.path.dirname(os.path.abspath(__file__))
PATH = os.path.join(PATH_DIR, 'client.log')
PATH_DECO = os.path.join(PATH_DIR, 'deco.log')

# Определить формат логов
STREAM_FORMAT = \
    logging.Formatter('%(asctime)s - %(levelname)-10s - %(module)-6s -  %(message)s')
FILE_FORMAT = \
    logging.Formatter('%(asctime)s - %(levelname)-10s - %(name)s - %(funcName)-16s - %(message)s')

# Создаём обработчик, выводящий сообщения с уровнем CRITICAL в поток stderr
STREAM_HANDLER = logging.StreamHandler(sys.stderr)
STREAM_HANDLER.setLevel(logging.INFO)
STREAM_HANDLER.setFormatter(STREAM_FORMAT)

# Создать обработчик, выводящий сообщения в файл
FILE_HANDLER = logging.FileHandler(PATH, encoding='utf-8')
FILE_HANDLER.setLevel(logging.INFO)
FILE_HANDLER.setFormatter(FILE_FORMAT)

# Создаём регистратор верхнего уровня
LOGGER = logging.getLogger('client')
LOGGER.setLevel(logging.INFO)

LOGGER.addHandler(STREAM_HANDLER)
LOGGER.addHandler(FILE_HANDLER)

# создаём логгер для декоратора
DECO_FORMAT = \
    logging.Formatter('%(asctime)s - %(message)s - %(funcName)s')
DECO_HANDLER = logging.FileHandler(PATH_DECO, encoding='utf-8')
DECO_HANDLER.setLevel(logging.INFO)
DECO_HANDLER.setFormatter(DECO_FORMAT)
DECO_LOGGER = logging.getLogger('deco_logger')
DECO_LOGGER.setLevel(logging.INFO)
DECO_LOGGER.addHandler(DECO_HANDLER)


def log_client(func):
    """
    Декоратор, для записи логов функции
    """
    def wrap(*args, **kwargs):
        DECO_LOGGER.info(f'функция {func.__name__} вызвана из функции {func.__module__}')
        print(func, *args, **kwargs)
        return func(*args, **kwargs)

    # wrap.__doc__=func.__doc__
    # wrap.__name__=func.__name__
    # wrap.__dict__.update(func.__dict__)

    # "<дата-время> Функция func_z() вызвана из функции main"
    return wrap


if __name__ == '__main__':
    'Smoke test'
    LOGGER.critical('Тестовая критическая ошибка')
    LOGGER.error('Тестовая ошибка')
    LOGGER.info('Тестовое информационное сообщение')
    LOGGER.debug('Тестовая отладочная информация')

    # переопределяем handler для того, чтобы smoke-test выводился в консоль
    DECO_HANDLER = logging.StreamHandler(sys.stderr)
    DECO_LOGGER.addHandler(DECO_HANDLER)
    DECO_LOGGER.critical('Тестовая критическая ошибка')
    DECO_LOGGER.error('Тестовая ошибка')
    DECO_LOGGER.info('Тестовое информационное сообщение')
    DECO_LOGGER.debug('Тестовая отладочная информация')
