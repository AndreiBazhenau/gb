# def get_user(first_name='неизвестно', last_name='неизвестна', age=None):
# def get_user(last_name='неизвестна', age=None, first_name):

def get_user(first_name, last_name='неизвестна', age=None):
    if not age:
        age = 'неизвестен'
    return f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}'


print(get_user('Иван', 'Иванов', 19))
print(get_user('Иван', 'Иванов'))
print(get_user('Иван'))
# args
# print(get_user())
# print(get_user(age=19, first_name='Иван', last_name='Иванов', height=185))
print(get_user(age=19, first_name='Иван', last_name='Иванов'))
# keyword=arg -> kwargs

user_1 = {
    'age': 19,
    'first_name': 'Иван',
    'last_name': 'Иванов'
}

print(get_user(**user_1))
