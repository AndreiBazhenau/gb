friend = {
    'name': 'Max',
    'age': 23,
    'has_car': True}

print("перебор по ключам")
for key in friend.keys():
    print(key)
    print(friend[key])

print("то же самое перебор по ключам")
for key in friend:
    print(key)
    print(friend[key])

print("перебор по значениям")
for val in friend.values():
    print(val)

print("перебор пар в виде кортежа. метод items возвращает список из кортежей")
for item in friend.items():
    print(item)

print("перебор пар в виде кортежа, но кортеж распадётся на 2 переменные key и val")
for key, val in friend.items():
    print(key)
    print(val)