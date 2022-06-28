import inspect
import logging
import sys

# получаем имя скрипта из которого вызван этот модуль
if sys.argv[0].find('client.py') > 0:
    LOGGER = logging.getLogger('log_client')
else:
    LOGGER = logging.getLogger('log_server')


def log(func):
    """
    Декоратор для записи логов функции
    """
    def log_saver(*args, **kwargs):
        ret = func(*args, **kwargs)
        LOGGER.info(f'функция {func.__name__} вызвана из функции {inspect.stack()[1][3]}')
        return ret

    # копируем атрибуты функции в атрибуты декорированной версии (functools.wraps())
    log_saver.__doc__ = func.__doc__
    log_saver.__name__ = func.__name__
    log_saver.__dict__.update(func.__dict__)

    return log_saver

