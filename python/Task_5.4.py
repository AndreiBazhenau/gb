# 4. Создать (не программно) текстовый файл со следующим содержимым:
# One — 1
# Two — 2
# Three — 3
# Four — 4
# Необходимо написать программу, открывающую файл на чтение и считывающую
# построчно данные. При этом английские числительные должны заменяться на
# русские. Новый блок строк должен записываться в новый текстовый файл.

eng_rus_dic = {
    'one': 'один', 'two': 'два', 'three': 'три', 'four': 'четыре', 'five': 'пять', 'six': 'шесть',
    'seven': 'семь', 'eight': 'восемь', 'nine': 'девять', 'ten': 'десять', 'zero': 'ноль'}

try:
    with open("5.4_input.txt", "r", encoding="utf-8") as file_obj:
        for line in file_obj.readlines():
            i = 0
            line.lower()
            list_1 = line.lower().split()
            # print(list_1)
            for el in list_1:
                for keys in eng_rus_dic.keys():
                    if el == keys:
                        el = eng_rus_dic.get(keys)
                        list_1.pop(i)
                        list_1.insert(i, el)
                        i += 1
                with open("5.4_output.txt", "a", encoding="utf-8") as file_output:
                    file_output.write(el)
                    file_output.write(" ")
            with open("5.4_output.txt", "a", encoding="utf-8") as file_output:
                file_output.write("\n")
            # print(list_1)
except IOError:
    print("Ошибка")
