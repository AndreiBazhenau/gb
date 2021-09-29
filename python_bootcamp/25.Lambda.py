# Lambda is an anonimous function
import random
one_to_10 = range(1, 11)    # Generate a list from 1 to 10
def dbl_num(num):           # The function to pass into map
    return num * 2
# Pass in the function and the list to generate a new list
print(list(map(dbl_num, one_to_10)))

# You could do the same thing with a lambda
# Map allows us to execute a function on each item in a list
print(list(map((lambda x: x * 3), one_to_10)))

# You can perform calculations against multiple lists
a_list = list(map((lambda x, y: x + y), [1, 2, 3], [1, 2, 3]))
print(a_list)

# While map executes functions on a list, filter selects items
# from a list based on a function.

# Print out the even values from a list
print(list(filter((lambda x: x % 2 == 0), range(1, 11))))

# Find the multiples of 9 from a random 100 value list with values between 1 and 1000.
# Найдите кратные 9ти из списка случайных 100 значений со значениями от 1 до 1000.
rand_list = list(random.randint(1, 1001) for i in range(100))
# Use modulus to find multiples of 9 by passing the random list to filter
print(list(filter((lambda x: x % 9 == 0), rand_list)))

# анонимная функция лямбда, которая выводит числа кратные 9-ти в диапазоне 1-1000
print(list(filter((lambda x: x % 9 == 0), range(1000))))

# Reduce is similar to map and filter, but it instead receives a list and returns a single result.
from functools import reduce    # You must import reduce
print(reduce((lambda x, y: x + y), range(1, 6))) # Add up the values in a list