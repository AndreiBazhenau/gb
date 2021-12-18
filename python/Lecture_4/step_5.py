max_num = 10 ** 6
# numbers = (el for el in range(max_num))  # generator expression
numbers = [el for el in range(max_num)]  # list generator
print(type(numbers))
print(len(numbers))

result = 0
for el in numbers:
    result += el

print(result)
