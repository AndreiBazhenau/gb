# 1) Создать программно файл в текстовом формате, записать в него
# построчно данные, вводимые пользователем. Об окончании ввода
# данных свидетельствует пустая строка.


while True:
    some_text = (input("Введите данные для записи (Enter - выход): "))
    if some_text == "":
        break
    else:
        try:
            with open("5.1.txt", "a", encoding="utf-8") as file_obj:
                file_obj.writelines(f"{some_text}\n")
        except IOError:
            print("Ошибка")
