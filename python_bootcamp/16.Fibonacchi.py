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
