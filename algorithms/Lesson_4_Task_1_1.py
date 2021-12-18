# Задача №4 из урока 2.
# Найти сумму n элементов следующего ряда чисел: 1, -0.5, 0.25, -0.125,…
# Количество элементов (n) вводится с клавиатуры.

import cProfile

def test_func(func):
    check_list = [1, 0.5, 0.75, 0.625, 0.6875, 0.65625, 0.671875, 0.6640625,
                  0.66796875, 0.666015625, 0.6669921875, 0.66650390625]
    for i, item in enumerate(check_list, 1):
        assert item == func(i)
        print(f'Test {i} OK')


# n = int(input('Расчёт суммы ряда: 1, -0.5, 0.25, -0.125,… \n'
#               'Введите количество элементов для расчёта: '))


def func_sum(n):
    result1 = 0
    result = 1
    if n <= 1:
        return 1
    for i in range(n + 1):
        result += result1 / -2
    return result
    # else:
    #     return 1 + func_sum(n - 1) / -2


#test_func(func_sum)
print(func_sum(3))

# cProfile.run('func_sum(10)')
#      10/1    0.000    0.000    0.000    0.000 Lesson_4_Task_1_1.py:19(func_sum)

# cProfile.run('func_sum(100)')
#     100/1    0.000    0.000    0.000    0.000 Lesson_4_Task_1_1.py:19(func_sum)

# cProfile.run('func_sum(500)')
#     500/1    0.000    0.000    0.000    0.000 Lesson_4_Task_1_1.py:19(func_sum)


# "Lesson_4_Task_1_1.func_sum(10)"
# 1000 loops, best of 5: 2.51 usec per loop

# "Lesson_4_Task_1_1.func_sum(15)"
# 1000 loops, best of 5: 3.67 usec per loop

# "Lesson_4_Task_1_1.func_sum(20)"
# 1000 loops, best of 5: 4.76 usec per loop

# "Lesson_4_Task_1_1.func_sum(25)"
# 1000 loops, best of 5: 6.04 usec per loop

# "Lesson_4_Task_1_1.func_sum(100)"
# 1000 loops, best of 5: 24.4 usec per loop

# "Lesson_4_Task_1_1.func_sum(200)"
# 1000 loops, best of 5: 48.7 usec per loop

# "Lesson_4_Task_1_1.func_sum(500)"
# 1000 loops, best of 5: 145 usec per loop


