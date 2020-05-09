# 3) Реализовать базовый класс Worker (работник), в котором определить атрибуты: name,
# surname, position (должность), income (доход). Последний атрибут должен быть защищенным
# и ссылаться на словарь, содержащий элементы: оклад и премия, например, {"wage": wage,
# "bonus": bonus}. Создать класс Position (должность) на базе класса Worker. В классе
# Position реализовать методы получения полного имени сотрудника (get_full_name) и дохода
# с учетом премии (get_total_income). Проверить работу примера на реальных данных
# (создать экземпляры класса Position, передать данные, проверить значения атрибутов,
# вызвать методы экземпляров).


worker_dict = {"Ivan Petrov": {"wage": 100000, "bonus": 50000},
               "Petr Ivanov": {"wage": 200000, "bonus": 20000},
               "Ivan Sidorov": {"wage": 200000, "bonus": 10000}}


class Worker:
    def __init__(self, name, surname, position, _income):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = get_salary(self.name + " " + self.surname)
        """ знаю, что конкатенация - нехорошо, но не хватило времени сделать лучше"""


def get_salary(worker_name):
    dict_1 = worker_dict[worker_name]
    salary = 0
    for val in dict_1.values():
        salary += val
        return salary


class Position(Worker):
    def get_full_name(self):
        return print(f"Полное имя сотрудника: {self.name} {self.surname}")

    def get_total_income(self):
        return print(f"Зарплата сотрудника {self.name} {self.surname} составила: {self._income}")


ivan_petrov = Position("Ivan", "Petrov", "engineer", 50000)
ivan_petrov.get_full_name()
ivan_petrov.get_total_income()
