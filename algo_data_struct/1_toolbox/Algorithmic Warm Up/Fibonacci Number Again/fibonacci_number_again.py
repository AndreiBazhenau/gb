# python3
# Задача: Даны два целых числа 0≤n≤10^18 и 2≤m≤10^3, вычислите n-е число Фибоначчи по модулю m.
#
# В этой задаче n может быть настолько большим, что алгоритм, выполняющий цикл из n итераций,
# будет слишком медленным. Поэтому нам нужно избежать такого цикла. Чтобы понять, как решить
# эту задачу, не перебирая все числа Фибоначчи F_i для i от 0 до n, посмотрите на таблицу 1.
# Видите ли вы какие-нибудь интересные свойства двух последних строк в таблице?
# Обе эти последовательности периодичны! Для m=2 период равен 011 и имеет длину 3,
# а для m=3 период равен 01120221 и имеет длину 8.
# Оказывается, что для любого целого числа m≥2 последовательность Fn mod m периодична.
# Период всегда начинается с 01 и известен как период Пизано (Пизано - другое имя Фибоначчи).
# Поэтому, чтобы вычислить, скажем, F2015mod3, нужно просто найти остаток от 2015 (порядковый
# номер числа Фибоначчи) при делении на 8 (модуль).
# Поскольку 2015=251⋅8+7, мы заключаем, что чтобы найти F2015 по модулю 3 (т.е. остаток от
# деления числа Фибоначчи номер 2015 на 3) нужно найти остаток от деления на на модуль
# числа Фибоначчи под номером, равным длине периода Пизано т.е.: F2015mod3=F7mod3=1.
# Или:
# 1. находим длину последовательности Пизано для модуля m
# 2. находим остаток от деления номера числа Фибоначчи на длину посл-сти Пизано для m
# 3. находим остаток от деления числа Фибоначчи с номером остатка из п.2 на модуль m
# Это и будет ответом.
# https://www.geeksforgeeks.org/fibonacci-number-modulo-m-and-pisano-period/


def fibonacci_number_again_naive(n, m):
    assert 0 <= n <= 10**18 and 2 <= m <= 10**3

    if n <= 1:
        return n

    previous, current = 0, 1
    for _ in range(n - 1):
        previous, current = current, (previous + current) % m

    return current


def fibonacci_number_again(n, m):
    assert 0 <= n <= 10**18 and 2 <= m <= 10**3

    def pizano_period(m):
        previous, current = 0, 1
        for i in range(1, m * m):
            previous, current = current, (previous + current) % m
            if previous == 0 and current == 1:
                return i

    def fibo(n):
        if n <= 1:
            return n
        else:
            previous, current = 0, 1
            for i in range(n):
                previous, current = current, previous + current
            # print(n, previous)
            return previous

    reminder = n % pizano_period(m)
    return fibo(reminder) % m


if __name__ == "__main__":
    input_n, input_m = map(int, input().split())
    print(fibonacci_number_again_naive(input_n, input_m))
    print(fibonacci_number_again(input_n, input_m))
