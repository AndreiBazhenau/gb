# python3
import math


def gcd_naive(a, b):
    assert 1 <= a <= 2 * 10 ** 9 and 1 <= b <= 2 * 10 ** 9

    for divisor in range(min(a, b), 0, -1):
        if a % divisor == 0 and b % divisor == 0:
            return divisor

    assert False


def gcd(a, b):
    assert 0 <= a <= 2 * 10 ** 9 and 0 <= b <= 2 * 10 ** 9

    devide = max(a, b)
    devider = min(a, b)

    def gcd_recu(devide, devider):
        remainder = devide % devider
        return devider, remainder

    while devider > 0:
        devide, devider = gcd_recu(devide, devider)
        if devider == 0:
            return devide


if __name__ == '__main__':
    input_a, input_b = map(int, input().split())
    print(gcd(input_a, input_b))
