# input.csv; size=5 GB
# RAM = 4 GB
# line by line -> generator
import os
import sys

import psutil

process = psutil.Process(os.getpid())

max_num = 10 ** 6
numbers = (el for el in range(max_num))  # generator expression
# numbers = [el for el in range(max_num)]
print(type(numbers))
print(f'размер генератор в МБ: {sys.getsizeof(numbers) / 2 ** 20}')

# print(numbers[10000])
# print(len(numbers))

result = 0
for el in numbers:  # !!! ONE value !!!
    result += el

print(process.memory_info().rss / 2 ** 20)
print(result)
