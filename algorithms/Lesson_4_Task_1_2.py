# Задача №4 из урока 2.
# Вариант оптимизации 2
# Найти сумму n элементов следующего ряда чисел: 1, -0.5, 0.25, -0.125,…
# Количество элементов (n) вводится с клавиатуры.

#import cProfile
#import functools


def test_func(func):
    check_list = [1, 0.5, 0.75, 0.625, 0.6875, 0.65625, 0.671875, 0.6640625,
                  0.66796875, 0.666015625, 0.6669921875, 0.66650390625]
    for i, item in enumerate(check_list, 1):
        assert item == func(i)
        print(f'Test {i} OK')


# n = int(input('Расчёт суммы ряда: 1, -0.5, 0.25, -0.125,… \n'
#               'Введите количество элементов для расчёта: '))

#@functools.lru_cache()
def func_sum(n):
    if n <= 1:
        return 1
    else:
        return 1 + func_sum(n - 1) / -2


#cProfile.run('func_sum(10)')


