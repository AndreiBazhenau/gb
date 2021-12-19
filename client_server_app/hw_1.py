# ДЗ № 1

# 1. Каждое из слов «разработка», «сокет», «декоратор» представить в строковом формате и проверить
# тип и содержание соответствующих переменных. Затем с помощью онлайн-конвертера преобразовать
# строковые представление в формат Unicode и также проверить тип и содержимое переменных.

print('\n Task 1 \n')
words = ['разработка', 'сокет', 'декоратор']

for word in words:
    print(word, type(word))

print('\n')

razrabotka = '\u0440\u0430\u0437\u0440\u0430\u0431\u043e\u0442\u043a\u0430'
print(razrabotka, type(razrabotka))

soket = '\u0441\u043e\u043a\u0435\u0442'
print(soket, type(soket))

decorator = '\u0434\u0435\u043a\u043e\u0440\u0430\u0442\u043e\u0440'
print(decorator, type(decorator))

print('\n Task 2 \n')

# 2. Каждое из слов «class», «function», «method» записать в байтовом типе без преобразования
# в последовательность кодов (не используя методы encode и decode) и определить тип, содержимое
# и длину соответствующих переменных.

klass = b'class'
function = b'function'
method = b'method'

print(klass, type(klass), len(klass))
print(function, type(function), len(function))
print(method, type(method), len(method))

print('\n Task 3 \n')

# 3. Определить, какие из слов «attribute», «класс», «функция», «type» невозможно записать в байтовом типе.

attribute = b'attribute'
print(attribute)

# в виде try/except код не работает - ошибка на строке klass = b'класс', поэтому без try/except
# try:
#     klass = b'класс'
# except Exception:
#     print(Exception)

# klass = b'класс'
print(klass)
# function =b'функция'
print(function)
type_ = b'type'
print(type_)

# Ответ: "класс" и "функция" нельзя записать в байтовом типе. При попытке это сделать возникает ошибка

print('\n Task 4 \n')

# 4. Преобразовать слова «разработка», «администрирование», «protocol», «standard» из строкового
# представления в байтовое и выполнить обратное преобразование (используя методы encode и decode).

words = ['разработка', 'администрирование', 'protocol', 'standard']
for word in words:
    word_enc = word.encode('utf-8')
    print(word, 'after encoding:', word_enc)
    word_dec = word_enc.decode('utf-8')
    print(word, 'after decoding:', word_dec, '\n')

print('\n Task 5 \n')

# 5. Выполнить пинг веб-ресурсов yandex.ru, youtube.com и преобразовать результаты из байтовового
# в строковый тип на кириллице.

import subprocess

sites = ['yandex.ru', 'youtube.com']
util = 'ping'

for site in sites:
    subprocess_task = subprocess.Popen([util, site], stdout=subprocess.PIPE)
    for line in subprocess_task.stdout:
        line = line.decode('cp866').encode('utf-8')
        print(line.decode('utf-8'))

print('\n Task 6 \n')

# 6. Создать текстовый файл test_file.txt, заполнить его тремя строками: «сетевое программирование»,
# «сокет», «декоратор». Проверить кодировку файла по умолчанию. Принудительно открыть файл в формате
# Unicode и вывести его содержимое.

# открываем файл в кодировке по умолчанию
with open('test_file.txt') as file:
    for line in file:
        print(line)

# проверяем кодировку с которой был открыт файл
print('Кодировка файла:', file.encoding, '\n')

# открываем файл в кодировке по умолчанию
with open('test_file.txt', encoding='utf-8') as file:
    for line in file:
        print(line)
