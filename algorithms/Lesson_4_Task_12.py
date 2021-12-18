# Задача 3 из урока 3. Вариант решения 2
# В массиве случайных целых чисел поменять
# местами минимальный и максимальный элементы.

from random import randint
import cProfile


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
# 60 function calls in 0.000 seconds
# 1    0.000    0.000    0.000    0.000 Lesson_4_Task_12.py:9(min_max_ch)

#cProfile.run('min_max_ch(100)')
# 536 function calls in 0.000 seconds
# 1    0.000    0.000    0.000    0.000 Lesson_4_Task_11.py:9(min_max_ch)

#cProfile.run('min_max_ch(500)')
# 2519 function calls in 0.001 seconds
# 1    0.000    0.000    0.001    0.001 Lesson_4_Task_11.py:9(min_max_ch)

#cProfile.run('min_max_ch(1000)')
# 5035 function calls in 0.002 seconds
# 1    0.000    0.000    0.002    0.002 Lesson_4_Task_12.py:9(min_max_ch)
#
#cProfile.run('min_max_ch(10000)')
# 56232 function calls in 0.020 seconds
# 1    0.001    0.001    0.020    0.020 Lesson_4_Task_11.py:9(min_max_ch)



# print(min_max_ch(10))


# "Lesson_4_Task_12.min_max_ch(10)"
# 100 loops, best of 5: 12.6 usec per loop

# "Lesson_4_Task_12.min_max_ch(100)"
# 100 loops, best of 5: 109 usec per loop

# "Lesson_4_Task_12.min_max_ch(500)"
# 100 loops, best of 5: 568 usec per loop

# "Lesson_4_Task_12.min_max_ch(1000)"
# 100 loops, best of 5: 1.16 msec per loop

# "Lesson_4_Task_12.min_max_ch(10000)"
# 100 loops, best of 5: 12.3 msec per loop
