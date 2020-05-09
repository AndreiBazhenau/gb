def show_user(first_name, last_name, age):
    # procedure
    print(f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}')
    # return None


def get_user(first_name, last_name, age):
    # function
    return f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}'


print(show_user('Иван', 'Иванов', 19))
print(get_user('Иван', 'Иванов', 19))
