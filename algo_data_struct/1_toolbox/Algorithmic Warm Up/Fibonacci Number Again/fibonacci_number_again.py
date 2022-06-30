# python3
# Задача: Даны два целых числа 0≤n≤10^18 и 2≤m≤10^3, вычислите n-е число Фибоначчи по модулю m.
#
# В этой задаче n может быть настолько большим, что алгоритм, выполняющий цикл из n итераций,
# будет слишком медленным. Поэтому нам нужно избежать такого цикла. Чтобы понять, как решить
# эту задачу, не перебирая все числа Фибоначчи F_i для i от 0 до n, посмотрите на таблицу 1.
# Видите ли вы какие-нибудь интересные свойства двух последних строк в таблице?
# Обе эти последовательности периодичны! Для m=2 период равен 011 и имеет длину 3,
# а для m=3 период равен 01120221 и имеет длину 8.
# Поэтому, чтобы вычислить, скажем, F2015mod3, нужно просто найти остаток от 2015 при делении на 8.
# Поскольку 2015=251⋅8+7, мы заключаем, что F2015mod3=F7mod3=1.
# Оказывается, что для любого целого числа m≥2 последовательность Fn mod m периодична.
# Период всегда начинается с 01 и известен как период Пизано (Пизано - другое имя Фибоначчи).


def fibonacci_number_again_naive(n, m):
    assert 0 <= n <= 10 ** 18 and 2 <= m <= 10 ** 3

    if n <= 1:
        return n

    previous, current = 0, 1
    for _ in range(n - 1):
        previous, current = current, (previous + current) % m

    return current


def fibonacci_number_again(n, m):
    assert 0 <= n <= 10 ** 18 and 2 <= m <= 10 ** 3

    def fibo(n):
        """ Find n-th Fibonacci number """
        if n <= 1:
            return n
        num_0, num_1 = 0, 1
        _ = 1
        summ = 0
        while _ < n:
            summ = num_0 + num_1
            num_0, num_1 = num_1, summ
            _ += 1
        return summ

    def pizano_seq_len(n, m):
        """
        Calculate length of Pizano sequence
        n: number of Fibo
        mod: modulo
        :return: length of Pizano sequence
        """
        pizano_seq = [0, 1] # every Pizano sequens starts from 01
        for i in range(2, n): # start to add elements from 3-rd
            f = fibo(i)
            # print('fibo=', f, 'n=', n)
            # print('reminder=', fibo(i) % mod)
            pizano_seq.append(fibo(i) % m) # append reminder from F_n / mod
            # print('pizano_seq=', pizano_seq)
            if pizano_seq[-2:] == [0, 1]: # stop when 01 meet in the Pizano sequence again
                # print('pizano_seq=', pizano_seq)
                # print(len(pizano_seq))
                return len(pizano_seq) - 2
    # print(f'n={n}, F_n={fibo(n)}')
    # print(f'Pizano seq len={pizano_seq_len(n, m)}')
    reminder = n % pizano_seq_len(n, m)
    return fibo(reminder) % m


if __name__ == '__main__':
    input_n, input_m = map(int, input().split())
    print(fibonacci_number_again_naive(input_n, input_m))
    print(fibonacci_number_again(input_n, input_m))
