# An iterable is a stored sequence of values (list) or, as we will see when we cover generators, an
#object that produces one value at a time. Iterables differ from iterators in that an iterable is
# an object with an __iter__ method which returns an iterator. An iterator is an object with
# a __next__ method which retrieves the next value from sequence of values. Let’s see an example.

# Define a string and convert it into an iterator
samp_str = iter("Sample")
print("Char :", next(samp_str))
print("Char :", next(samp_str))

# Custom Iterable. Now I’ll show how you can add iterator behavior to your custom classes.
class Alphabet:
    def __init__(self):         # конструктор класса. Выделяется память для объекта
        self.letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        self.index = -1

    def __iter__(self):         # получение объекта итератор
        return self

    def __next__(self):         # извлечение следующего элемента из итератора
        if self.index >= len(self.letters) - 1:
            raise StopIteration
        self.index += 1
        return self.letters[self.index]


alpha = Alphabet()
for letter in alpha:
    print(letter)

# Iterate through a dictionary because it is an iterable
derek = {"f_Name": "Derek", "l_Name": "Banas"}
for key in derek:
    print(key, derek[key])

# Create a class that returns values from the Fibonacci sequence each time next is called.
# Sample Output
# Fib : 1
# Fib : 2
# Fib : 3
# Fib : 5

class FibGenerator:
    def __init__(self):
        self.num_1 = 0
        self.num_2 = 1

    def __iter__(self):
        return self

    def __next__(self):
        fib_num = self.num_1 + self.num_2
        self.num_1 = self.num_2
        self.num_2 = fib_num
        return fib_num

fibo = FibGenerator()
for num in range(10):
    print("Fib: ", next(fibo))
'''
def fibonacci(num):  # Every recursive function must contain a condition when it ceases to call itself
    if num == 0:
        return 0
    elif num == 1:
        return 1
    else:
        result = fibonacci(num - 1) + fibonacci(num - 2)
        return result
num_fibonacci_values = int(input("How many Fibonacci values should be found:"))
i = 1
while i < num_fibonacci_values:
    fibonacci_value = fibonacci(i)
    print(fibonacci_value)
    i += 1
'''