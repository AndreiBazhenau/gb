import logging
import sys

# # определяем формат логов
# server_format = logging.Formatter('%(asctime)s - %(levelname)s - %(module)s - %(message)s')
#
# # создаём обработчик (handler), определяющий куда пишем логи
# servel_file_handler = logging.FileHandler('log/server.log')
#
# # устанавливаем низший уровень событий, которые будут писаться
# servel_file_handler.setLevel(logging.INFO)
#
# # устанавливаем формат хэндлеру
# servel_file_handler.setFormatter(server_format)
#
# # создаём именованный логгер
# server_logger = logging.getLogger('server')
# server_logger.setLevel(logging.CRITICAL)

# ==============================================================================================
# Определить формат сообщений
format = logging.Formatter('%(asctime)s - %(levelname)s - %(module)s - %(message)s')

# Создать обработчик, который выводит сообщения с уровнем CRITICAL в поток stderr
crit_hand = logging.StreamHandler(sys.stderr)
crit_hand.setLevel(logging.CRITICAL)
crit_hand.setFormatter(format)

# Создать обработчик, который выводит сообщения в файл
file_hand = logging.FileHandler('server.log')
file_hand.setLevel(logging.INFO)
file_hand.setFormatter(format)

# Создать регистратор верхнего уровня с именем 'app'
server_log = logging.getLogger('server')
server_log.addHandler(file_hand)
server_log.addHandler(crit_hand)


