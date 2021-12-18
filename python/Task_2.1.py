# Создать список и заполнить его элементами различных типов данных.
# Реализовать скрипт проверки типа данных каждого элемента.
# Использовать функцию type() для проверки типа. Элементы списка
# можно не запрашивать у пользователя, а указать явно, в программе.

random_list = [True, 2, 5.6, b'10000', 'nice word', range(10), None,
               ['list', 1, False, 'second word'],
               ('tuple', 3.1415926,),
               {'set', 3.1415926, },
               {'green': '#008000', 'red': '#FF0000',
                'blue': '#0000FF', 'yellow': '#FFFF00'}]
for index, i in enumerate(random_list):
    print(type(i), "for object: ", random_list[index])
