# Сортировка сложных структур с помощью ключа

from collections import namedtuple
from operator import attrgetter

Person = namedtuple('Person', 'name, age')

p_1 = Person('Vasya', 25)
p_2 = Person('Kolya', 30)
p_3 = Person('Olya', 23)

people = [p_1, p_2, p_3]

print(people)

result = sorted(people)
print(result)


# сортировка с ключём работать не будет sorted(people, key='age')
# нужно вот так:

def by_age(person):
    return person.age


result_1 = sorted(people, key=by_age)

# а можно обойтись без функции
result_2 = sorted(people, key=attrgetter('age'))
print(result_2)
