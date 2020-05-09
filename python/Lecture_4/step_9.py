from functools import reduce

# map-reduce
numbers = [1, 2, 3, 4, 5, 6, 7, 8]


# first - second
# 1 - 2 = -1
# [-1, 3, 4, 5, 6, 7, 8]
# -1 - 3 = -4
# [-4, 4, 5, 6, 7, 8]
# -4 - 4 = -8
# [-8, 5, 6, 7, 8]
# result++


def my_func(x, y):
    return x - y ** 2


# result = reduce(lambda x, y: x - y ** 2, numbers[::-1])
result = reduce(my_func, numbers[::-1])
print(result)
