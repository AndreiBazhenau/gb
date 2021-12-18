import random

my_tuple = [[random.randint(1, 10) for _ in range(5)] for _ in range(7)]
for column in my_tuple:
    for item in column:
        print(f'{item:>4}', end='')
    print()

year = 2000

if year % 4 == 0 or (year % 100 == 0 and year % 400 != 0):
    print('1 Год не высокосный')

# if year % 4 != 0 and (year % 100 == 0 and year % 400 != 0):
#     print('2 Год не высокосный')

if year % 4 == 0 or (year % 100 != 0 and year % 400 == 0):
    print('3 Год не высокосный')

if year % 4 != 0 or (year % 100 == 0 and year % 400 != 0):
    print('4 Год не высокосный')

# 1 3 4 4
from collections import deque

d = deque([i for i in range(5)], maxlen=7)
d.append(5)
d.appendleft(6)
d.extend([7, 8, 9])
d.extendleft([10, 11])
print(d)


array = [1, 2, 3, 4, 5, 6, 7]
pos = 2
num = 5
array_new = array[:pos] + [num] + array[pos:]

print(array_new)
