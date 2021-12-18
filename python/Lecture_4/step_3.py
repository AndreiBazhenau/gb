import sys

from user_proceed import get_fullname

# print(sys.argv)

if len(sys.argv) == 3:
    print(get_fullname(sys.argv[1], sys.argv[2]))
else:
    print('неверное количество аргументов')
