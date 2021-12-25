"""
Урок 2. Файловое хранение данных
Практическое задание

1. Задание на закрепление знаний по модулю CSV. Написать скрипт, 
осуществляющий выборку определенных данных из файлов info_1.txt, 
info_2.txt, info_3.txt и формирующий новый «отчетный» файл в 
формате CSV. Для этого:
 - Создать функцию get_data(), в которой в цикле осуществляется 
перебор файлов с данными, их открытие и считывание данных. В этой
функции из считанных данных необходимо с помощью регулярных 
выражений извлечь значения параметров «Изготовитель системы», 
«Название ОС», «Код продукта», «Тип системы». Значения каждого 
параметра поместить в соответствующий список. Должно получиться 
четыре списка — например, os_prod_list, os_name_list, os_code_list, 
os_type_list. В этой же функции создать главный список для хранения 
данных отчета — например, main_data — и поместить в него названия 
столбцов отчета в виде списка: «Изготовитель системы», «Название ОС», 
«Код продукта», «Тип системы». Значения для этих столбцов также 
оформить в виде списка и поместить в файл main_data (также для 
каждого файла);
 - Создать функцию write_to_csv(), в которую передавать ссылку на 
CSV-файл. В этой функции реализовать получение данных через вызов 
функции get_data(), а также сохранение подготовленных данных в 
соответствующий CSV-файл;
- Проверить работу программы через вызов функции write_to_csv(). 
"""

import csv


def get_data(files):

    os_prod_list, os_name_list, os_code_list, os_type_list = [], [], [], []

    for file in files:
        with open(file) as f:
            for row in f:
                row_list = row.split(':')
                if row_list[0] == 'Изготовитель системы':
                    os_prod_list.append(row_list[1].lstrip().rstrip())
                elif row_list[0] == 'Название ОС':
                    os_name_list.append(row_list[1].lstrip().rstrip())
                elif row_list[0] == 'Код продукта':
                    os_code_list.append(row_list[1].lstrip().rstrip())
                elif row_list[0] == 'Тип системы':
                    os_type_list.append(row_list[1].lstrip().rstrip())

    main_data = [
        ['Изготовитель системы', 'Название ОС', 'Код продукта', 'Тип системы'],
    ]

    for i in range(len(os_prod_list)):
        main_data.append([os_prod_list[i], os_name_list[i], os_code_list[i], os_type_list[i]])

    with open('data/main_data.csv', 'w') as f_n:
        f_n_writer = csv.writer(f_n, quoting=csv.QUOTE_NONNUMERIC)
        f_n_writer.writerows(main_data)

    with open('data/main_data.csv') as f_n:
        print(f_n.read())


def write_to_csv(files):
    get_data(files)


write_to_csv(['data/info_1.txt', 'data/info_2.txt', 'data/info_3.txt'])
