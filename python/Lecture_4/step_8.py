max_num = 3


# numbers = (el for el in range(max_num))


def my_generator():
    # el = 1
    # while True:
    #     el += 1
    #     yield el  # current val, like next
    for el in range(max_num):
        yield el  # current val, like next
        # return el


numbers = my_generator()
print(next(numbers))
print(next(numbers))
# print(next(numbers))

print(type(numbers))

result = 0
for el in numbers:
    # print(el)
    result += el
print(result)
