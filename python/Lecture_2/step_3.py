workers = ['Иван', 'Дмитрий', 'Инна', 'Петр', 'Денис']
print(workers[::2])

# [3, 7] (3, 7] [3, 7)
numbers = []
for num in range(1, 100 + 1):
    numbers.append(num)

print(numbers[::3])
print(numbers[::-3])
print(numbers[10:50:3])

# new object
numbers_rev = numbers[::-1]
print(numbers_rev)

# in place
numbers.reverse()
print(numbers)

