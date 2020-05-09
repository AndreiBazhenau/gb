# 5. В массиве найти максимальный отрицательный элемент. Вывести на
# экран его значение и позицию в массиве.
# Примечание к задаче: пожалуйста не путайте «минимальный» и
# «максимальный отрицательный». Это два абсолютно разных значения.

from random import randint

list_1 = [randint(-10, 10) for i in range(10)]
neg_num_exist = False
max_neg = list_1[0]
max_neg_pos = -1
for pos, el in enumerate(list_1):
    if el < 0 and neg_num_exist is False:
        neg_num_exist = True
        max_neg = el
        max_neg_pos = pos
    if max_neg < el < 0:
        max_neg = el
        max_neg_pos = pos
if neg_num_exist is False:
    print(f'В массиве {list_1} нет отрицательных чисел')
else:
    print(f'Максимальный отрицательный элемент\n'
          f'массива {list_1} это число {max_neg}\n'
          f'которое находится на позиции {max_neg_pos}')
