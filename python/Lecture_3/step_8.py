# def get_user(first_name, last_name='неизвестна', age='неизвестен'):

def get_user(first_name, last_name='неизвестна', age=None):
    if not age:
        age = 'неизвестен'
    return f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}'


print(get_user('Иван', 'Иванов', 19))
print(get_user('Иван', 'Иванов'))
print(get_user('Иван'))
# print(get_user(19, 'Иван', 'Иванов'))
