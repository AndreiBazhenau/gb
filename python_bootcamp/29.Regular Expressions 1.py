# coding=utf-8
''' Regular Expressions (Regex) are used to :
1. Search for a specific string in a large amount of data
2. Verify that a string has the proper format (Email, Phone #)
3. Find a string and replace it with another string
4. Format data into the proper form for importing for example
First we’ll search for an exact string match.

re.match - ищет с начала строки
re.search - ищет по всей строке, но возвраает только первое совпадение
re.findall - возвращает список всех найденных совпадений
re.split -разделяет строку по заданному шаблону
re.sub - ищет шадлон в строе и заменяет его на указанную подстроку
re.compile - собирает регулярное выражение в отдельный объект, который может быть
  использовани для поиска. Это избавляет от переписывания одного и того же выражения

Оператор	Описание
.	        Один любой символ, кроме новой строки \n.
?	        0 или 1 вхождение шаблона слева
+	        1 и более вхождений шаблона слева
*	        0 и более вхождений шаблона слева
\w	        Любая цифра или буква (\W — все, кроме буквы или цифры)
\d	        Любая цифра [0-9] (\D — все, кроме цифры)
\s	        Любой пробельный символ (\S — любой непробельный символ)
\b	        Граница слова
[..]	    Один из символов в скобках ([^..] — любой символ, кроме тех, что в скобках)
\	        Экранирование специальных символов (\. означает точку или \+ — знак «плюс»)
^ и $   	Начало и конец строки соответственно
{n,m}	    От n до m вхождений ({,m} — от 0 до m)
a|b	        Соответствует a или b
()	        Группирует выражение и возвращает найденный текст
\t, \n, \r	Символ табуляции, новой строки и возврата каретки соответственно
'''

import re  # import the Regex module
if re.search("ape", "The ape was at the apex"):  # Search for ape in the string
    print("There is an ape")
print()

''' findall() returns a list of matches and is used to match any 1 character or space.
 Finditer can be used to return an iterator of matches. '''

all_apes = re.findall("ape.", "The ape was at the apex")
for i in all_apes:
    print(i)
print()
# finditer returns an iterator of matching objects
# You can use span to get the location
the_str = "The ape was at the apex"
for i in re.finditer("ape.", the_str):       # . get match any character or space
    loc_tuple = i.span()                     # Span returns a tuple
    print(loc_tuple)
    print(the_str[loc_tuple[0]:loc_tuple[1]])  # Slice the match out using the tuple values
print()
# Match 1 of Several Letters
# Square brackets will match any one of the characters between the brackets not including
# upper and lowercase varieties unless they are listed. We can also define characters in
# a range and define that we want to match anything except a defined number of characters.
animal_str = "Cat rat mat fat pat"
all_animals = re.findall("[crmfp]at", animal_str) # match c, r, m, f, p followed by at in the end
for i in all_animals:
    print(i)  #not search Cat because not mentioned C
print()

# We can also allow for characters in a range
# Remember to include upper and lowercase letters
some_animals = re.findall("[c-mC-M]at", animal_str)
for i in some_animals:
    print(i)
print()

# Use ^ to denote any character but whatever characters are between the brackets
# ^ - caret ['kærɪt] mean to match everything except Cr
some_animals = re.findall("[^Cr]at", animal_str)
for i in some_animals:
    print(i)
print()

# You can replace items and define pattern objects.
# Replace matching items in a string
owl_food = "rat cat mat pat"
# Compile a regex (regular expression) into pattern objects which provide additional methods
regex = re.compile("[cr]at")
# sub() replaces items that match the regex in the string
# with the 1st attribute string passed to sub
owl_food = regex.sub("owl", owl_food)
print(owl_food)

print()

# Solving Backslash Problems
# Regex use the backslash to designate special characters and Python does the same inside
# strings which causes issues.

rand_str = "Here is \\stuff"                  # Let's try to get "\\stuff" out of a string
print("Find \\stuff : ", re.search("\\stuff", rand_str))      # This won't find it

# This does, but we have to put in 4 slashes which is messy
print("Find \\stuff : ", re.search("\\\\stuff", rand_str))

# You can get around this by using raw strings which don't treat backslashes as special
print("Find \\stuff : ", re.search(r"\\stuff", rand_str))