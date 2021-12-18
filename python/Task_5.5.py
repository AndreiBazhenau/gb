# 5. Создать (программно) текстовый файл, записать в него программно
# набор чисел, разделенных пробелами. Программа должна подсчитывать
# сумму чисел в файле и выводить ее на экран.

numbers = input("Введите числа разделённые пробелами: ")
try:
    with open("5.5.txt", "w", encoding="utf-8") as file_obj:
        file_obj.writelines(numbers)
except IOError:
    print("Ошибка")

try:
    with open("5.5.txt", "r", encoding="utf-8") as file_obj:
        content = file_obj.read().split()
        sum_numbers = 0
        for el in content:
            sum_numbers += int(el)
        print(f"Сумма чисел = {sum_numbers}")
except IOError:
    print("Ошибка")
