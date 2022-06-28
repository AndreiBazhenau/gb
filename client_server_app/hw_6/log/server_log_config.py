import logging
from logging import handlers
import sys
import os

PATH = os.path.dirname(os.path.abspath(__file__))
PATH = os.path.join(PATH, 'logs/server.log')

# Определить формат логов
format_crit = logging.Formatter('%(asctime)s - %(levelname)-10s - %(module)-6s -  %(message)s')
format_file = \
    logging.Formatter('%(asctime)s - %(levelname)-10s - %(name)-10s - %(funcName)-16s - %(message)s')

# Создаём обработчик, выводящий сообщения с уровнем CRITICAL в поток stderr
crit_hand = logging.StreamHandler(sys.stderr)
crit_hand.setLevel(logging.INFO)
crit_hand.setFormatter(format_crit)

# Создать обработчик, выводящий сообщения в файл
file_hand = logging.handlers.TimedRotatingFileHandler(PATH,
                                                      when='D',
                                                      interval=1,
                                                      backupCount=7,
                                                      encoding='utf-8',
                                                      )
# чтобы имя файла с логами не оканчивалось на дату, прописываем кастомный namer для хэндлера
# https://stackoverflow.com/questions/61948867/add-file-extension-in-timedrotatingfilehandler
file_hand.namer = lambda name: name.replace(".log", "") + ".log"
#file_hand.namer = lambda name: name + ".log"
file_hand.setLevel(logging.INFO)
file_hand.setFormatter(format_file)

# Создаём регистратор верхнего уровня
server_log = logging.getLogger('log_server')
server_log.setLevel(logging.INFO)

server_log.addHandler(crit_hand)
server_log.addHandler(file_hand)

if __name__ == '__main__':
    'Smoke test'
    server_log.critical('Тестовая Критическая ошибка')
    server_log.error('Тестовая ошибка')
    server_log.info('Тестовое информационное сообщение')
    server_log.debug('Тестовая отладочная информация')
