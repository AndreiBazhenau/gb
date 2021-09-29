'''We saw that . matches any character, but what if we want to match a period (.)?
Backslash the period. You do the same with [, ] and others.
Пунктуационный знак, который ставится в конце предложения называться full stop 
в британском варианте английского языка и period в американском варианте. 
При этом она будет так читаться даже, если озвучивается в целях передачи эмоций.
    Я не буду этого делать и точка. 
    I won’t do it, full stop. (BrEn)
    I won’t do it, period. (AmEn)
Термин dot используется при проговаривании адресов вэбсайтов и электронной почты.
    www.englishteacup.org будет звучать:
    double U double U double U dot englishteacup (all one word) dot com
Слово point обычно используется для отделения знаков в десятичных дробях.
В английском языке разделителем целого числа и дробной части выступает точка,
а не запятая, как в русском. При этом надо помнить, что цифры в десятичных дробях
после точки произносятся по отдельности. Например,
    3.757 будет читаться как three point seven five seven
    16.598 как sixteen point five nine eight                  '''
# Did you find a match  if re.search("REGEX", my_string)
# Get list of matches print("Matches :", len(re.findall("REGEX", my_string)))
# Get a pattern object regex = re.compile("REGEX")
# Substitute the match my_string = regex.sub("substitution", my_string)
# [] match what is in the brackets
# [^ ] match everything except what is in the brackets
# . match any 1 character or space
# \n new line
# \d an 1 number
# \D anythig but a number
# \w same as [a-zA-Z0-9_]
# \W same as [^a-zA-Z0-9_]
# \s same as [\f\n\r\t\v]
# \S same as [^\f\n\r\t\v]
# {5} match 5 of what proceeds the curly brackets
# {5,7} match values that are between 5 and 7

import re
rand_str = "F.B.I. I.R.S. CIA"
print("Matches :", len(re.findall(".\..\..", rand_str)))  # len gives the number of results
# results is 2 because CIA do not have any dots.

# Matching Whitespace
rand_str = """This is a long
string that goes
on for many lines"""
print(rand_str)
regex = re.compile("\n")                 # Remove newlines
rand_str = regex.sub(" ", rand_str)  # substiture (remove) spaces
print(rand_str)
# You can also match
# \b : Backspace
# \f : Form Feed FF - смена страницы
# \r : Carriage Return CR - возврат каретки в начало строки без перевода на следующую
                # На терминалах этот символ обычно эквивалентен переводу строки (хотя
                        # в принципе можно было бы его использовать для очистки экрана).
# \t : Tab
# \v : Vertical Tab
# You may need to remove \r\n on Windows
# \n : Line Feed - перевод строки. Перемещает позицию печати на одну строку вниз
                # (исходно — без возврата каретки).
                # Разделяет строки текстовых файлов в Unix-системах.
# \s : WhiteSpace - пробел

# Matching Any Single Number
# \d can be used instead of [0-9]  d - digit?
# \D is the same as [^0-9]
randStr = "12345"
print("Matches :", len(re.findall("\d", randStr)))

# Matching Multiple Numbers by following the \d with {numOfValues}
if re.search("\d{5}", "12345"):  # Match 5 numbers only
    print("It is a zip code")
#  match within a range
num_str = "123 12345 123456 1234567"
# Match values between 5 and 7 digits
print("Matches :", len(re.findall("\d{5,7}", num_str)))


# Matching Any Single Letter or Number
# \w is the same as [a-zA-Z0-9_]
# \W is the same as [^a-zA-Z0-9_]
ph_num = "412-555-1212"
# Check if it is a phone number
if re.search("\w{3}-\w{3}-\w{4}", ph_num):
    print("It is a phone number")
# Check for valid first name between 2 and 20 characters
if re.search("\w{2,20}", "Ultraman"):
    print("It is a valid name")


# Matching WhiteSpace
# \s is the same as [\f\n\r\t\v]
# \S is the same as [^\f\n\r\t\v] = anything except WhiteSpace
# Check for valid first and last name with a space
if re.search("\w{2,20}\s\w{2,20}", "Toshio Muramatsu"):
    print("It is a valid full name")

# Matching One or More
# + matches 1 or more characters фаеук
# Match a followed by 1 or more characters
print("Matches :", len(re.findall("a+", "a as ape bug")))
print()

''' Create a Regex that matches email addresses from a list.
    Translate the following rules into a Regex.
1. 1 to 20 lowercase and uppercase letters, numbers, plus ._%+-
2. An @ symbol
3. 2 to 20 lowercase and uppercase letters, numbers, plus .-
4. A period
5. 2 to 3 lowercase and uppercase letters '''
#  len - число элементов в контейнере
email_list = "db@aol.com m@.com @apple.com db@.com"
print("Email matches:", len(re.findall("[\w._%+-]{1,20}@[\w.-]{2,20}.[a-zA-Z]{2,3}",email_list)))
