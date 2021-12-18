#     list - создаёт list (список)
#          map - принимает два аргумента: функцию и аргумент составного типа данных,
#          например, список. map применяет к каждому элементу списка переданную функцию.
#                lambda - это способ создать анонимную функцию, т.е. функцию без имени
#                Синтаксис lambda выражения в Python: lambda arguments: expression
#                В качестве arguments передается список аргументов, разделенных запятой,
#                после чего над переданными аргументами выполняется expression.
print(list(map((lambda x: x * 2), range(1, 11))))
# то же самое. [] квадратные скобки - потому что лист зписывается в []
# Note that a list comprehension is surrounded by [] because it returns a list
print([2 * x for x in range(1, 11)])
# Функция filter предлагает элегантный вариант фильтрации элементов последовательности.
# Принимает в качестве аргументов функцию и последовательность, которую необходимо
# отфильтровать. функция, передаваемая в filter должна возвращать значение True / False,
# чтобы элементы корректно отфильтровались.
krupa = ['мак', 'просо', 'мак', 'мак', 'просо', 'мак', 'просо', 'просо', 'просо', 'мак']
zolushka = list(filter(lambda x: x == 'мак', krupa))
print(zolushka)
# ['мак', 'мак', 'мак', 'мак', 'мак']

print("Чётные до 10-ти: ", list(filter((lambda x: x % 2 != 0), range(1, 11))))
# то же самое
print("Чётные до 10-ти: ", [x for x in range(1, 11) if x % 2 != 0])

# A list comprehension can act as map and filter on one line
# Generate a list of 50 values and take them to the power
# of 2 and return all that are multiples of 8
print("В квадрате до 50-ти делимые на 8: ",[i ** 2 for i in range(50) if i % 8 == 0])

# Multiply all values in one list times all values in another
print([x * y for x in range(1,3) for y in range(11, 16)])

# Generate a list of 10 values, multiply them by 2 and return multiples of 8
print([x for x in [i * 2 for i in range(10)] if x % 8 == 0])
print([x ** 2 if x % 2 == 0 else x ** 3 for x in range(10)])
print("=================")
# генерация 50-ти значений каждое из которых от 1 до 1000. Вернуть те, что деляться на 9
import random
#print("random number: ", x for x in [ i for i in range(50) random.randrange(1000))
print("50 случайных чисел до 1000", list(map((lambda x: random.randrange(1000)),\
                                                                      range(50))))
print(list(filter((lambda x: random.randrange(1,1000) % 9 == 0), range(50))))

print("=======")
# Generate a list of 50 random values between 1 and 1000 and return those that are
# multiples of 9. You’ll have to use a list comprehension in a list comprehension.
# генерация 50-ти значений каждое из которых от 1 до 1000. Вернуть те, что деляться на 9
print([x for x in [random.randint(1, 1001) for i in range(50)] if x % 9 == 0])


print("Числа до 50-ти делимые на 9: ", [i for i in range(50) if i % 9 == 0])

print("числа в диапазоне 1-50 делящиеся на 9-ть: ", end=" ")
my_list = [i for i in range(50)]
for i in my_list:
    if i % 9 == 0:
        print(i, end=" ")
print("\n")

# List comprehensions also make it easy to work with multidimensional lists
multi_list = [[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]]
print([col[1] for col in multi_list])

# Get the diagonal by incrementing 0, 0 -> 1, 1 -> 2, 2
print([multi_list[i][i] for i in range(len(multi_list))])

print("======== Generator functions ============")
# A generator function returns a result generator when called. They can be suspended and
# resumed during execution of your program to create results over time rather then all at once.
# We use generators when we want to big result set, but we don't want to slow down the
# program by creating it all at one time.
# Here I’ll create a generator that calculates primes and returns the next prime on command.
def is_prime(num):
    for i in range(2, num): # This for loop cycles through primes from 2 to the value to check
        if (num % i) == 0: # If any division has no remainder we know it isn't a prime number
            return False
        return True
def gen_primes(max_number):  # This is the generator
    for num1 in range(2, max_number): # This for loop cycles through primes from 2 to the maximum value requested
        if is_prime(num1):
            yield num1 # yield is what makes this a generator. When called by next it will return the next result
prime = gen_primes(50)         # Create a reference to the generator
print("Prime:", next(prime))  # Call next for each result
print("Prime:", next(prime))
print("Prime:", next(prime))
print("Prime:", next(prime))

# Generator expressions look just like list comprehensions but they return results one at a time.
# The are surrounded by parentheses () instead of [ ]

double = (x * 2 for x in range(10))
print("Double:", next(double))
print("Double:", next(double))
# You can iterate through all results as well
for num in double:
    print(num)
