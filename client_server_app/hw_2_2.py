"""
2. Задание на закрепление знаний по модулю json. Есть файл orders
в формате JSON с информацией о заказах. Написать скрипт,
автоматизирующий его заполнение данными. Для этого:
- Создать функцию write_order_to_json(), в которую передается
5 параметров — товар (item), количество (quantity), цена (price),
покупатель (buyer), дата (date). Функция должна предусматривать запись
данных в виде словаря в файл orders.json. При записи данных указать
величину отступа в 4 пробельных символа;
- Проверить работу программы через вызов функции write_order_to_json()
с передачей в нее значений каждого параметра.
"""

import json


def write_order_to_json(item, quantity, price, buyer, date):

    dict_to_json = {
                    "orders": [{
                                "item": item,
                                "quantity": quantity,
                                "price": price,
                                "buyer": buyer,
                                "date": date
                              }]
                    }

    # дописываем к файлу, а не перезатираем
    with open('data/orders.json', 'a') as f_n:
        json.dump(dict_to_json, f_n, sort_keys=True, indent=4)

    with open('data/orders.json', encoding='utf-8') as f_n:
        print(f_n.read())


write_order_to_json('Laptop', 1, 100, 'Microsoft', '2021.12.25')
