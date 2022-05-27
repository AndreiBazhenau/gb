import logging
import sys

# Определить формат сообщений
format = logging.Formatter('%(asctime)s - %(levelname)s - %(module)s - %(message)s')

# Создать обработчик, который выводит сообщения с уровнем CRITICAL в поток stderr
crit_hand = logging.StreamHandler(sys.stderr)
crit_hand.setLevel(logging.CRITICAL)
crit_hand.setFormatter(format)

# Создать обработчик, который выводит сообщения в файл
file_hand = logging.FileHandler('client.log')
file_hand.setLevel(logging.INFO)
file_hand.setFormatter(format)

# Создать регистратор верхнего уровня с именем 'app'
client_log = logging.getLogger('client')
client_log.addHandler(file_hand)
client_log.addHandler(crit_hand)