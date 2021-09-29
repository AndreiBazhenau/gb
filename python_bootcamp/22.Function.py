# Create a function that receives a list and a function.
# The function passed will return True or False if a list value is odd.
# And then the surrounding function will return a list of odd numbers.
# Функция получает диапазон значений и возвращает только нечётные числа

def is_it_odd(num):
    if num % 2 == 0:
        return False
    else:
        return True

def change_list(list, func):
    odd_list = []
    for i in list:
        if func(i):
            odd_list.append(i)
    return odd_list

a_list = range(1, 20)
print(change_list(a_list, is_it_odd))