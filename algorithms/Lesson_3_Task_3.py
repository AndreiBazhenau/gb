# 3. В массиве случайных целых чисел поменять
# местами минимальный и максимальный элементы.

from random import randint

input_list = [randint(0, 20) for i in range(10)]
print(input_list)
min_pos = 0
max_pos = 0
for pos, el in enumerate(input_list):
    if el < input_list[min_pos]:
        min_pos = pos
    if el > input_list[max_pos]:
        max_pos = pos
input_list[min_pos], input_list[max_pos] = input_list[max_pos], input_list[min_pos]
print(input_list)
