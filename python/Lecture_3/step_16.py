def show_user(first_name, last_name, age):
    """
    Print user info

    :param first_name:
    :param last_name:
    :param age:
    """
    print(f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}')


def get_user(first_name, last_name, age):
    """Return user info"""
    return f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}'


# print(show_user('Иван', 'Иванов', 19))
# print(get_user('Иван', 'Иванов', 19))
# print(show_user.__doc__)
# print(help(show_user))
print(help(get_user))

# show_user -> callback
# show_user() -> evaluate
