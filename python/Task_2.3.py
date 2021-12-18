# 3. Пользователь вводит месяц в виде целого числа от 1 до 12.
# Сообщить к какому времени года относится месяц (зима, весна, лето, осень).
# Напишите решения через list и через dict.

month = int(input("Please enter month number: "))

# как решить задачу с помощью словаря было понятно сразу, но
# были сложности с пониманием как решить через лист
month_dic = {
    12: 'Winter', 1: 'Winter', 2: 'Winter',
    3: 'Spring', 4: 'Spring', 5: 'Spring',
    6: 'Summer', 7: 'Summer', 8: 'Summer',
    9: 'Autumn', 10: 'Autumn', 11: 'Autumn'}
print(f"Your month No.{month} is in the {month_dic.get(month)}"
      if 1 <= month <= 12 else "Your month number is out of range.")

# ===================================================================
# получилось вот так
month_list = ['Winter', 'Winter', 'Spring', 'Spring', 'Spring', 'Summer',
              'Summer', 'Summer', 'Autumn', 'Autumn', 'Autumn', 'Winter']
index = 1
if 1 <= month <= 12:
    for i in month_list:
        if month == index:
            print(f"Your month No.{month} is in the {i}")
        index += 1
else:
    print("Your month number is out of range.")
