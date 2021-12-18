worker_1 = ['Иван', 'Иванов', 27, 175, 75]
# worker_1_as_dict = {
#     0: 'Иван',
#     1: 'Иванов',
#     2: 27,
#     3: 175,
#     4: 75
# }

worker_1_as_dict = {
    'first_name': 'Иван',
    'last_name': 'Иванов',
    'age': 27,
    'height': 175,
    'weight': 75,
    'friends': []
}

workers = []
workers.append(worker_1_as_dict)

print(
    f'Сотрудник: имя {worker_1[0]}, '
    f'фамилия {worker_1[1]}, возраст {worker_1[2]}'
)

print(
    f'Сотрудник: имя {worker_1_as_dict["first_name"]}, '
    f'фамилия {worker_1_as_dict["last_name"]}, '
    f'возраст {worker_1_as_dict["age"]}'
)

worker_1_as_dict['office'] = 'Красная площадь'
print(worker_1_as_dict['office'])

# for el in worker_1_as_dict.items():
#     print(el)

# for key, val in worker_1_as_dict.items():
#     print(key, val)

for val in worker_1_as_dict.values():
    print(val)


# print(worker_1_as_dict['phone'])
# if 'phone' in worker_1_as_dict:
if 'phone' in worker_1_as_dict.keys():
    print(worker_1_as_dict['phone'])
else:
    print('ключа "phone" нет')

print(worker_1_as_dict.setdefault('phone', 'ключа "phone" нет'))
print(worker_1_as_dict.setdefault('age', 18))
print(worker_1_as_dict.setdefault('birthday', 'неизвестно'))

