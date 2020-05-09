# 2. Отсортируйте по возрастанию методом слияния одномерный вещественный
# массив, заданный случайными числами на промежутке [0; 50). Выведите на
# экран исходный и отсортированный массивы.


import random

array = [i for i in range(50)]
random.shuffle(array)
print(array)


def merge_sort(array):
    if len(array) <= 1:
        return array
    middle = int(len(array) // 2)
    left = merge_sort(array[:middle])
    right = merge_sort(array[middle:])
    return merge(left, right)


def merge(left, right):
    result = []
    while len(left) > 0 and len(right) > 0:
        if left[0] <= right[0]:
            result.append(left[0])
            left = left[1:]
        else:
            result.append(right[0])
            right = right[1:]
    if len(left) > 0:
        result += left
    if len(right) > 0:
        result += right
    return result


print(merge_sort(array))
