def get_user(first_name, last_name='неизвестна', age=None, **kwargs):
    # print(kwargs)
    if not age:
        age = 'неизвестен'
    result = f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}'
    if 'height' in kwargs.keys():
        result += f', рост: {kwargs.get("height")}'
    return result
    # print(result)


greeting = get_user(age=19, first_name='Иван', last_name='Иванов', height=165)

print(f'{greeting} Вы выиграли миллион!')
print(f'{greeting} Перезвоните нам!')
