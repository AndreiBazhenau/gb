import sys
import random

workers = ['Иван', 152, 147.8, True, None, type]
workers_tpl = ('Иван', 152, 147.8,
               True, None, type)
# print(sys.getsizeof(workers), type(workers))
# print(sys.getsizeof(workers_tpl), type(workers_tpl))
#
# for el in workers:
#     print(f'\t{el} ({type(el)}) -> {sys.getsizeof(el)} bytes')

# print(dir(workers))
# print(dir(workers_tpl))
# print(dir('Иван'))
print('Иван'.lower())
print('Иван'.upper())
print('иван'.title())
print('ИвАН'.title())

some_str = 'С   новым    годом всех!\nА   может быть ворона?'
print(some_str[:-3])
print(some_str[-3:])
print(some_str[::-1])
print(some_str.split())
print(some_str.split('о'))
print(some_str.split('ов'))
print(some_str.split('\n'))

some_str_as_list = list(some_str)
random.shuffle(some_str_as_list)
print(''.join(some_str_as_list))

# BLOB

