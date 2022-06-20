# python3


def lcm_naive(a, b):
    assert 1 <= a <= 2 * 10 ** 9 and 1 <= b <= 2 * 10 ** 9

    multiple = max(a, b)
    while multiple % a != 0 or multiple % b != 0:
        multiple += 1

    return multiple


def lcm(a, b):
    assert 1 <= a <= 2 * 10 ** 9 and 1 <= b <= 2 * 10 ** 9

    if a == b:
        return a
    multiple = min(a, b)
    step = multiple
    multiple *= 2
    while multiple % a != 0 or multiple % b != 0:
        multiple += step
    return multiple


if __name__ == '__main__':
    input_a, input_b = map(int, input().split())
    print(lcm_naive(input_a, input_b))
