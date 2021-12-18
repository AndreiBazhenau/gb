# DRY
# y = x ^ 2
# y = x ^ 3

def say_greeting(name):
    print(f'Дорогой, {name}, с Новым 2020 годом! Пожелания.')


# name = 'Иван'
# call
# say_greeting('Иван')
# say_greeting('Петр')
# say_greeting('Анна')
# say_greeting('Даниил')

greeting_members = ['Иван', 'Петр', 'Анна', 'Даниил']
for name in greeting_members:
    say_greeting(name)

# 7 min -> 20:06 AIR
