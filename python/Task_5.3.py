# 3. Создать текстовый файл (не программно), построчно записать
# фамилии сотрудников и величину их окладов. Определить, кто из
# сотрудников имеет оклад менее 20 тыс., вывести фамилии этих
# сотрудников. Выполнить подсчет средней величины дохода сотрудников.


staff_dict = {}
staff_dict_1 = {}
sum_salary = 0
staff_num = 0
try:
    with open("5.3.txt", "r", encoding="utf-8") as file_obj:
        for lines in file_obj:
            list_1 = lines.split()
            staff_dict.update({list_1[0]: list_1[1] for i in range(0, len(list_1))})
        #print(staff_dict)
        for k, v in staff_dict.items():
            if int(v) < 20000:
                staff_dict_1.setdefault(k, v)
                sum_salary += int(v)
                staff_num += 1
                av_salary = sum_salary / staff_num
        #print(staff_dict_1)
        print(f"Сотрудники с окладом менее 20 тыс. руб.: {staff_dict_1.keys()}")
        print(f"Средний оклад = {av_salary} руб")
except IOError:
    print("Ошибка")
