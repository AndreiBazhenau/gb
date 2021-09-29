def factorial(num):  # Factorial are calculeted as such 3! = 3*2*1
    if num <= 1:
        return 1
    else:
        result = num * factorial(num - 1)
        return result

print(factorial(int(input("Give the number for Factorial!:"))))