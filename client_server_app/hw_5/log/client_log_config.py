import logging
import sys

# Определить формат логов
format_crit = logging.Formatter('%(asctime)s - %(levelname)-10s - %(module)-6s -  %(message)s')
format_file = \
    logging.Formatter('%(asctime)s - %(levelname)-10s - %(name)s - %(funcName)-16s - %(message)s')

# Создаём обработчик, выводящий сообщения с уровнем CRITICAL в поток stderr
crit_hand = logging.StreamHandler(sys.stderr)
crit_hand.setLevel(logging.INFO)
crit_hand.setFormatter(format_crit)

# Создать обработчик, выводящий сообщения в файл
file_hand = logging.FileHandler('log/client.log')
file_hand.setLevel(logging.INFO)
file_hand.setFormatter(format_file)

# Создаём регистратор верхнего уровня
client_log = logging.getLogger()
client_log.setLevel(logging.INFO)

client_log.addHandler(crit_hand)
client_log.addHandler(file_hand)