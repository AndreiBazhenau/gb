# Решето Эратосфена: алгоритм нахождения всех простых (которые не составные)
# чисел до заданного числа N.

# 2 3 5 7 11 13 17 19 23 29 31
# 1 2 3 4 5  6  7  8  9  10 11

import cProfile

def sieve_er(n):
    sieve = [i for i in range(n)]
    sieve[1] = 0
    for i in range(2, n):
        if sieve[i] != 0:
            j = i * 2

            while j < n:
                sieve[j] = 0
                j += i
    sieve = [i for i in sieve if i != 0]
    return sieve


def sieve_2(number):
    number1 = number
    while len(sieve_er(number1)) < number:
        number1 *= 2
    sieve2 = sieve_er(number1)
    return sieve2[number - 1]


# cProfile.run('sieve_2(10)')
# 4    0.000    0.000    0.000    0.000 Lesson_4_Task_21.py:9(sieve_er)

# cProfile.run('sieve_2(100)')
# 5    0.001    0.000    0.001    0.000 Lesson_4_Task_21.py:9(sieve_er)

# cProfile.run('sieve_2(500)')
# 5    0.003    0.001    0.004    0.001 Lesson_4_Task_21.py:9(sieve_er)

# cProfile.run('sieve_2(1000)')
# 5    0.006    0.001    0.008    0.002 Lesson_4_Task_21.py:9(sieve_er)

# cProfile.run('sieve_2(10000)')
# 6    0.155    0.026    0.190    0.032 Lesson_4_Task_21.py:9(sieve_er)

# print(sieve_2(10))


# "Lesson_4_Task_21.sieve_2(10)"
# 23
# 100 loops, best of 5: 24.6 usec per loop

# "Lesson_4_Task_21.sieve_2(100)"
# 100 loops, best of 5: 620 usec per loop

# "Lesson_4_Task_21.sieve_2(500)"
# 100 loops, best of 5: 3.6 msec per loop

# "Lesson_4_Task_21.sieve_2(1000)"
# 100 loops, best of 5: 7.43 msec per loop


