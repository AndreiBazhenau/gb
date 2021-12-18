import random

size = 10
array = [i for i in range(size)]
random.shuffle(array)
print(array)


def quick_sort_no_memory(array, fst, lst):
    # массив, где начать, где закончить сортировку

    if fst >= lst:
        return

    print(array)

    # опорный элемент выбираем в диапазоне от fst до lst
    pivot = array[random.randint(fst, lst)]
    i, j = fst, lst  # отслеживание индексов

    while i <= j:

        while array[i] < pivot:
            i += 1

        while array[j] > pivot:
            j -= 1

        if i <= j:
            array[i], array[j] = array[j], array[i]
            i, j = i + 1, j - 1

    quick_sort_no_memory(array, fst, j)  # сортировка левой меньшей части
    quick_sort_no_memory(array, i, lst)  # сортировка правой большей части


quick_sort_no_memory(array, 0, len(array) - 1)
print(array)
