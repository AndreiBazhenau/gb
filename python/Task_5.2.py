# 2) Создать текстовый файл (не программно), сохранить в нем
# несколько строк, выполнить подсчет количества строк,
# количества слов в каждой строке.


line_num = 1
try:
    with open("5.2.txt", "r", encoding="utf-8") as file_obj:
        for line in file_obj:
            word_num = line.count(" ")
            print(f"Количество слов в строке {line_num}: {word_num + 1}")
            line_num += 1
except IOError:
    print("Ошибка открытия файла")
print(f"В тексте всего строк: {line_num - 1}")
