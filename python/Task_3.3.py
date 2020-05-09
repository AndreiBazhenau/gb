# 3. Реализовать функцию my_func(), которая принимает три позиционных
# аргумента, и возвращает сумму наибольших двух аргументов.


def my_func(num1, num2, num3):
    return num1 + num2 + num3 - min(num1, num2, num3)


print(my_func(4, 1, 2))
