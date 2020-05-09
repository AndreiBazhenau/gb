# Алгоритм перебора делителей заключается в последовательном делении заданного
# натурального числа на все целые числа, начиная с двойки и заканчивая
# значением меньшим или равным квадратному корню из тестируемого числа.
#
# Если хотя бы один делитель делит исследуемое число без остатка, то это число
# является составным. Если ни одного такого делителя не находится, то число
# признается простым.

# 2 3 5 7 11 13 17 19 23 29 31
# 1 2 3 4 5  6  7  8  9  10 11

import cProfile


def is_prime(n):
    for j in range(3, int(n**0.5) + 1):
        if n % j == 0:
            return 0
    return 1


def search(n):
    prime = 2
    no_prime = 1
    prov_ch = 3
    while no_prime < n:
        if is_prime(prov_ch) == 1:
            prime = prov_ch
            no_prime += 1
        prov_ch += 2
    return prime


# cProfile.run('search(10)')
# 14    0.000    0.000    0.000    0.000 Lesson_4_Task_22.py:15(is_prime)

# cProfile.run('search(100)')
# 270    0.000    0.000    0.000    0.000 Lesson_4_Task_22.py:15(is_prime)

# cProfile.run('search(500)')
# 1785    0.002    0.000    0.002    0.000 Lesson_4_Task_22.py:15(is_prime)

# cProfile.run('search(1000)')
# 3959    0.006    0.000    0.006    0.000 Lesson_4_Task_22.py:15(is_prime)

# cProfile.run('search(10000)')
# 52364    0.164    0.000    0.164    0.000 Lesson_4_Task_22.py:15(is_prime)

# print(search(9))

# "Lesson_4_Task_22.search(10)"
# 100 loops, best of 5: 10.8 usec per loop

# "Lesson_4_Task_22.search(100)"
# 100 loops, best of 5: 277 usec per loop

# "Lesson_4_Task_22.search(500)"
# 100 loops, best of 5: 2.46 msec per loop

# "Lesson_4_Task_22.search(1000)"
# 100 loops, best of 5: 6.43 msec per loop

# "Lesson_4_Task_22.search(10000)"
# 100 loops, best of 5: 170 msec per loop

