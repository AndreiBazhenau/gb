# Задача 3 из урока 3. Вариант решения 1
# В массиве случайных целых чисел поменять
# местами минимальный и максимальный элементы.

from random import randint
import cProfile

def min_max_ch(n):
    input_list = [randint(0, n) for i in range(n)]
    # print(input_list)
    min_pos = 0
    max_pos = 0
    for pos, el in enumerate(input_list):
        if el < input_list[min_pos]:
            min_pos = pos
        if el > input_list[max_pos]:
            max_pos = pos
    input_list[min_pos], input_list[max_pos] = input_list[max_pos], input_list[min_pos]
    return input_list

# cProfile.run('min_max_ch(10)')
# 57 function calls in 0.000 seconds
# 1    0.000    0.000    0.000    0.000 Lesson_4_Task_11.py:8(min_max_ch)

# cProfile.run('min_max_ch(100)')
# 529 function calls in 0.000 seconds
# 1    0.000    0.000    0.000    0.000 Lesson_4_Task_11.py:8(min_max_ch)

# cProfile.run('min_max_ch(500)')
# 2512 function calls in 0.001 seconds
# 1    0.000    0.000    0.001    0.001 Lesson_4_Task_11.py:8(min_max_ch)

# cProfile.run('min_max_ch(1000)')
# 5026 function calls in 0.002 seconds
# 1    0.000    0.000    0.002    0.002 Lesson_4_Task_11.py:8(min_max_ch)
#
# cProfile.run('min_max_ch(10000)')
# 56290 function calls in 0.021 seconds
# 1    0.001    0.001    0.020    0.020 Lesson_4_Task_11.py:8(min_max_ch)

# print(min_max_ch(10))

# "Lesson_4_Task_11.min_max_ch(10)"
# 100 loops, best of 5: 12.3 usec per loop

# "Lesson_4_Task_11.min_max_ch(100)"
# 100 loops, best of 5: 113 usec per loop

# Lesson_4_Task_11.min_max_ch(500)"
# 100 loops, best of 5: 592 usec per loop

# "Lesson_4_Task_11.min_max_ch(1000)"
# 100 loops, best of 5: 1.19 msec per loop

# "Lesson_4_Task_11.min_max_ch(10000)"
# 100 loops, best of 5: 13 msec per loop








