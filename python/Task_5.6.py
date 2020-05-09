# 6. Необходимо создать (не программно) текстовый файл, где каждая строка
# описывает учебный предмет и наличие лекционных, практических и лабораторных
# занятий по этому предмету и их количество. Важно, чтобы для каждого предмета
# не обязательно были все типы занятий. Сформировать словарь, содержащий
# название предмета и общее количество занятий по нему. Вывести словарь на экран.
# Примеры строк файла:
# Информатика: 100(л) 50(пр) 20(лаб).
# Физика: 30(л) — 10(лаб)
# Физкультура: — 30(пр) —
# Пример словаря: {“Информатика”: 170, “Физика”: 40, “Физкультура”: 30}

subj_dict = {}
try:
    with open("5.6.txt", "r", encoding="utf-8") as file_obj:
        for el in file_obj:
            new_el = el.replace("(л)", " ")
            new_el = new_el.replace("(пр)", " ")
            new_el = new_el.replace("(лаб).", " ")
            new_el = new_el.replace("(лаб)", " ")
            new_el = new_el.replace("—", " ")
            new_el = new_el.replace(":", " ")
            new_el = ' '.join(new_el.split())
            subj_list = new_el.split()
            sum_hours = 0
            for subj_hours in subj_list[1:]:
                sum_hours += int(subj_hours)
            subj_dict.update({subj_list[0]: sum_hours for i in range(len(subj_list))})
    print(subj_dict)
except IOError:
    print("Ошибка")
