# 4. Определить, какое число в массиве встречается чаще всего.

from random import randint

list_1 = [randint(0, 10) for i in range(20)]
max_num = 1
for el in list_1:
    if list_1.count(el) > max_num:
        max_num = el
print(f'Число {max_num} встречается в массиве {list_1} чаще всего')
