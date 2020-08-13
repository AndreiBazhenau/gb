# Задача 3 из урока 3. Вариант решения 3
# В массиве случайных целых чисел поменять
# местами минимальный и максимальный элементы.

from random import randint
import functools
import cProfile


@functools.lru_cache()
def min_max_ch(n):
    input_list = [randint(0, n) for i in range(n)]
    # print(input_list)
    min_num = min(input_list)
    max_num = max(input_list)
    pos_min = input_list.index(min_num)
    pos_max = input_list.index(max_num)
    input_list[pos_min], input_list[pos_max] = input_list[pos_max], input_list[pos_min]
    return input_list


#cProfile.run('min_max_ch(10)')
# 62 function calls in 0.000 seconds
# 1    0.000    0.000    0.000    0.000 Lesson_4_Task_13.py:10(min_max_ch)

#cProfile.run('min_max_ch(100)')
# 531 function calls in 0.000 seconds
# 1    0.000    0.000    0.000    0.000 Lesson_4_Task_13.py:10(min_max_ch)

#cProfile.run('min_max_ch(500)')
# 2520 function calls in 0.001 seconds
# 1    0.000    0.000    0.001    0.001 Lesson_4_Task_13.py:10(min_max_ch)

#cProfile.run('min_max_ch(1000)')
# 5030 function calls in 0.002 seconds
# 1    0.000    0.000    0.002    0.002 Lesson_4_Task_13.py:10(min_max_ch)

#cProfile.run('min_max_ch(10000)')
# 56430 function calls in 0.020 seconds
# 1    0.000    0.000    0.020    0.020 Lesson_4_Task_13.py:10(min_max_ch)


# print(min_max_ch(10))

# "Lesson_4_Task_13.min_max_ch(10)"
# 100 loops, best of 5: 94 nsec per loop

# "Lesson_4_Task_13.min_max_ch(100)"
# 100 loops, best of 5: 94 nsec per loop

# "Lesson_4_Task_13.min_max_ch(500)"
# 100 loops, best of 5: 93 nsec per loop

# "Lesson_4_Task_13.min_max_ch(100)"
# 100 loops, best of 5: 96 nsec per loop

# "Lesson_4_Task_13.min_max_ch(1000)"
# 100 loops, best of 5: 95 nsec per loop

# "Lesson_4_Task_13.min_max_ch(10000)"
# 100 loops, best of 5: 94 nsec per loop
