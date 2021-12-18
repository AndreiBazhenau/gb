# 6. Реализовать функцию int_func(), принимающую слово из маленьких
# латинских букв и возвращающую его же, но с прописной первой буквой.
# Например, print(int_func(‘text’)) -> Text.
# Продолжить работу над заданием. В программу должна попадать строка
# из слов, разделенных пробелом. Каждое слово состоит из латинских букв
# в нижнем регистре. Сделать вывод исходной строки, но каждое слово должно
# начинаться с заглавной буквы. Необходимо использовать написанную ранее
# функцию int_func().


def int_func(text):
    str1 = ''
    for el in text[1:]:
        str1 += el.lower()
    return text[0].upper() + str1


#print(int_func('wOrD'))


def main_func(text2):
    str2 = ''
    for el in text2.split():
        str2 += ' ' + int_func(el)
    return str2


print(main_func('wOrd teXt oTHERs IMportant'))
