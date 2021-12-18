# re.compile - собирает регулярное выражение в отдельный объект, который может быть
# использовани для поиска. Это избавляет от переписывания одного и того же выражения

# Matching Zero or One
import re
rand_str = "cat cats"
regex = re.compile("[cat]+s?")  # s может быть, а может и не быть потому что '?'
matches = re.findall(regex, rand_str)
# Match cat or cats
print("Matches :", len(matches))
for i in matches:
    print(i)
print()

# Matching Zero or More
rand_str = "doctor doctors doctor's"
regex = re.compile("[doctor]+['s]*")  # Match doctor doctors or doctor's
matches = re.findall(regex, rand_str)
print("Matches :", len(matches))
print()
#  пример верху и пример снизу абсолютно одинаковы потому что +['s]* = {0,2}
# You can do the same by setting an interval match
regex = re.compile("[doctor]+['s]{0,2}")
matches = re.findall(regex, rand_str)
print("Matches :", len(matches))
for i in matches:
    print(i)
print()

# On Windows newlines are some times \n and other times \r\n
# Create a regex that will grab each of the lines in this string,
# print out the number of matches and each line.
long_str = '''Just some words
and some more\r
and more
'''
print("Matches :", len(re.findall(r"[\w\s]+[\r]?\n", long_str)))
matches = re.findall("[\w\s]+[\r]?\n", long_str)
for i in matches:
    print(i)

print("== Greedy & Lazy Matching ==")
# Let's try to grab everything between <name> tags
# Because * is greedy (It grabs the biggest match possible)
# we can't get what we want, which is each individual tag match
rand_str = "<name>Life On Mars</name><name>Freaks and Geeks</name>"
regex = re.compile(r"<name>.*</name>")
matches = re.findall(regex, rand_str)
print("Matches :", len(matches))
for i in matches:
    print(i)
print()

# We want to grab the smallest match we use *?, +?, or {n,}? instead
regex = re.compile(r"<name>.*?</name>")   # также вместо '*?' можно поставить '+?'
matches = re.findall(regex, rand_str)
print("Matches :", len(matches))
for i in matches:
    print(i)
print()

# Word Boundaries
# We use word boundaries to define where our matches start and end
# \b matches the start or end of a word
# If we want ape it will match ape and the beginning of apex
rand_str = "ape at the apex"
regex_1 = re.compile(r"ape")
# If we use the word boundary
regex_2 = re.compile(r"\bape\b")
matches_1 = re.findall(regex_1, rand_str)
matches_2 = re.findall(regex_2, rand_str)
print("Matches 1:", len(matches_1))
print("Matches 2:", len(matches_2))