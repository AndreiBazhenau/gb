# python3


def fibonacci_number_naive(n):
    assert 0 <= n <= 45

    if n <= 1:
        return n

    return fibonacci_number_naive(n - 1) + fibonacci_number_naive(n - 2)


def fibonacci_number(n):
    assert 0 <= n <= 45

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


if __name__ == '__main__':
    input_n = int(input())
    print(fibonacci_number(input_n))
