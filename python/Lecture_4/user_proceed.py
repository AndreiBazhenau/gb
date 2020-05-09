import random


def generate_age(max_age=80):
    return random.randint(18, max_age)


def get_fullname(first_name, last_name):
    return f'{first_name} {last_name}'






# print(__name__)
if __name__ == '__main__':
    print(__name__)
    print(generate_age())
    print(generate_age(65))
    print(get_fullname('Иван', 'Иванов'))
