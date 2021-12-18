class Mammal:
    def move(self):
        print('Двигается')


class Hare(Mammal):
    def move(self):
        print('Прыгает')


animal = Mammal()
animal.move()  # Двигается
hare = Hare()
hare.move()  # Прыгает

print("=============")


class Person:
    def say_hi(self):
        print('Привет! Как дела?')


p = Person()
p.say_hi()

print("=============")


class Person:
    def __init__(self, name):
        self.name = name

    def say_hi(self):
        print('Привет! Меня зовут', self.name)


p = Person('Swaroop')
p.say_hi()

print("=============")  # ======================================================


class Robot:
    """Представляет робота с именем."""
    # Переменная класса, содержащая количество роботов
    population = 0

    def __init__(self, name):
        """Инициализация данных."""
        self.name = name
        """Переменная name принадлежит объекту (ей присваивается значение
         при помощи self), и поэтому является переменной объекта"""
        print('(Инициализация {0})'.format(self.name))
        # При создании этой личности, робот добавляется к переменной 'population'
        Robot.population += 1
        """мы обращаемся к переменной класса population как Robot.population, а не
        self.population. К переменной же объекта name во всех методах этого объекта
        мы обращаемся при помощи обозначения self.name. Помните об этой простой разнице
        между переменными класса и объекта. Также имейте в виду, что переменная объекта
        с тем же именем, что и переменная класса, сделает недоступной («спрячет»)
        переменную класса!"""
    def __del__(self):
        """Я умираю."""
        print('{0} уничтожается!'.format(self.name))
        Robot.population -= 1
        if Robot.population == 0:
            print('{0} был последним.'.format(self.name))
        else:
            print('Осталось {0:d} работающих роботов.'.format(Robot.population))

    def sayHi(self):
        """Приветствие робота. Да, они это могут."""
        print('Приветствую! Мои хозяева называют меня {0}.'.format(self.name))

    def howMany():
        """Выводит численность роботов."""
        print('У нас {0:d} роботов.'.format(Robot.population))

    howMany = staticmethod(howMany)
    """Метод howMany принадлежит классу, а не объекту. Это означает, что мы можем
    определить его как classmethod или staticmethod, в зависимости от того, нужно
    ли нам знать, в каком классе мы находимся. Поскольку нам не нужна такая
    информация, мы воспользуемся staticmethod
    Мы могли достичь того же самого, используя декораторы:
    
    @staticmethod
    def howMany():
        '''Выводит численность роботов.'''
        print('У нас {0:d} роботов.'.format(Robot.population))
           
    Декораторы можно считать неким упрощённым способом вызова явного оператора """

droid1 = Robot('R2-D2')
droid1.sayHi()
Robot.howMany()

droid2 = Robot('C-3PO')
droid2.sayHi()
Robot.howMany()

print("\nЗдесь роботы могут проделать какую-то работу.\n")

print("Роботы закончили свою работу. Давайте уничтожим их.")
del droid1
del droid2
Robot.howMany()

print(f'\n', 30 * '=', f'\n')   # ===================================================

# ДЕКОРАТОР @property позволяет работать с методом некоторого класса как с атрибутом


class MyClass:
    def __init__(self, param_1, param_2):
        self.param_1 = param_1
        self.param_2 = param_2

    @property
    def my_method(self):
        return f"Параметры, переданные в класс:" \
            f" {self.param_1}, {self.param_2}"


mc = MyClass("text_1", "text_2")

print(mc.param_1)
print(mc.param_2)

print(mc.my_method)



print(f'\n', 30 * '=', f'\n')

# Композиция
# Рассмотрим реализацию композиции на примере вычисления площади обоев,
# необходимых для оклеивания комнаты.


class WindowDoor:
    def __init__(self, wd_len, wd_height):
        self.square = wd_len * wd_height


class Room:
    def __init__(self, len_1, len_2, height):
        self.square = 2 * height * (len_1 + len_2)
        self.wd = []

    def add_win_door(self, wd_len, wd_height):
        self.wd.append(WindowDoor(wd_len, wd_height))

    def common_square(self):
        main_square = self.square
        for el in self.wd:
            main_square -= el.square
        return main_square


r = Room(7, 4, 3.7)
print(r.square)
r.add_win_door(2, 2)
r.add_win_door(2, 2)
r.add_win_door(2, 2)
print(r.common_square())


print(f'\n', 30 * '=', f'\n')   # ===================================================
# виртуальная модель образовательного процесса


class Person:
    def __init__(self, name, surname):
        self.name = name
        self.surname = surname
    def __str__(self):
        return f"Name and surname: {self.name} {self.surname}"


class Teacher(Person):
    def to_teach(self, subj, *pupils):
        for pupil in pupils:
            pupil.to_take(subj)


class Pupil(Person):
    def __init__(self, name, surname):
        super().__init__(name, surname)
        self.knowledges = []
    def to_take(self, subj):
        self.knowledges.append(subj)


class Subject:
    def __init__(self, *subjects):
        self.subjects = list(subjects)
    def my_list(self):
        return self.subjects


s = Subject("maths", "physics", "chemistry")
t = Teacher("Ivan", "Ivanov")
print(t)

p_1 = Pupil("Petr", "Petrov")
p_2 = Pupil("Sergey", "Sergeev")
p_3 = Pupil("Vladimir", "Vladimirov")
print(f"{p_1}; {p_2}; {p_3}")

t.to_teach(s, p_1, p_2, p_3)
print(p_1.knowledges[0].my_list())

print(f'\n', 30 * '=', f'\n')   # ===================================================

# Программа для отслеживания преподавателей и студентов
# У них есть общие хаактеристики: имя, возраст, адресю
# Специфические:
#  - преподаватели: зарплата, курсы, отпуск
#  - студенты: оценки, оплата за обучение.


class SchoolMember:
    """Представляет любого человека в школе."""
    def __init__(self, name, age):
        self.name = name
        self.age = age
        print('(Создан SchoolMember: {0})'.format(self.name))

    def tell(self):
        """Вывести информацию."""
        print('Имя:"{0}" Возраст:"{1}"'.format(self.name, self.age), end=" ")


class Teacher(SchoolMember):
    """Представляет преподавателя."""
    def __init__(self, name, age, salary):
        SchoolMember.__init__(self, name, age)
        self.salary = salary
        print('(Создан Teacher: {0})'.format(self.name))

    def tell(self):
        SchoolMember.tell(self) # <-------------------------|
        print('Зарплата: "{0:d}"'.format(self.salary))  #   |
"""Обратите внимание, что при вызове метода tell из класса SchoolMember экземпляры
Teacher или Student можно использовать как экземпляры SchoolMember.
Заметьте также, что вызывается метод tell из подкласса, а не метод tell из класса
SchoolMember. Это можно понять следующим образом: Python всегда начинает поиск методов 
в самом классе, что он и делает в данном случае. Если же он не находит метода, он 
начинает искать методы, принадлежащие базовым классам по очереди, в порядке, в котором
они перечислены в кортеже при определении класса."""

class Student(SchoolMember):
    """Представляет студента."""
    def __init__(self, name, age, marks):
        SchoolMember.__init__(self, name, age)
        self.marks = marks
        print('(Создан Student: {0})'.format(self.name))

    def tell(self):
        SchoolMember.tell(self)
        print('Оценки: "{0:d}"'.format(self.marks))


t = Teacher('Mrs. Shrividya', 40, 30000)
s = Student('Swaroop', 25, 75)
print()  # печатает пустую строку
members = [t, s]
for member in members:
    member.tell()  # работает как для преподавателя, так и для студента
