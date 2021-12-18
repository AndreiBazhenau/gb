def get_user(*args):
    result = f'Имя: {args[0]}, фамилия: {args[1]}, возраст: {args[2]}'
    return result


greeting = get_user(age=19, first_name='Иван', last_name='Иванов', height=165)
# greeting = get_user('Иван', 'Иванов', 19)

print(f'{greeting} Вы выиграли миллион!')
print(f'{greeting} Перезвоните нам!')
