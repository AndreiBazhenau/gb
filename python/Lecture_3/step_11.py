def get_user(**kwargs):
    age = kwargs.get('age', 'неизвестен')
    first_name = kwargs.get('first_name', 'неизвестно')
    last_name = kwargs.get('last_name', 'неизвестна')
    result = f'Имя: {first_name}, фамилия: {last_name}, возраст: {age}'
    if 'height' in kwargs.keys():
        result += f', рост: {kwargs.get("height")}'
    return result


greeting = get_user(age=19, first_name='Иван', last_name='Иванов', height=165)

print(f'{greeting} Вы выиграли миллион!')
print(f'{greeting} Перезвоните нам!')
