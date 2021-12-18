# 4) Реализуйте базовый класс Car. У данного класса должны быть следующие
# атрибуты: speed, color, name, is_police (булево).  А также методы: go, stop,
# turn(direction), которые должны сообщать, что машина поехала, остановилась,
# повернула (куда). Опишите несколько дочерних классов: TownCar, SportCar, WorkCar,
# PoliceCar. Добавьте в базовый класс метод show_speed, который должен показывать
# текущую скорость автомобиля. Для классов TownCar и WorkCar переопределите метод
# show_speed. При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно
# выводиться сообщение о превышении скорости.
# Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к
# атрибутам, выведите результат. Выполните вызов методов и также покажите результат.


class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        print(f"Машина {self.name} поехала")

    def stop(self):
        print(f"Машина {self.name} остановилась")

    def turn(self):
        print(f"Машина {self.name} повернула")

    def show_speed(self):
        print(f"У машины {self.name} скорость: {self.speed}")


class TownCar(Car):
    def show_speed(self):
        if self.speed > 60:
            print(f"У машины {self.name} скорость: {self.speed} - превышение")
        else:
            print(f"У машины {self.name}  скорость: {self.speed}")


class SportCar(Car):
    pass


class WorkCar(Car):
    def show_speed(self):
        if self.speed > 40:
            print(f"У машины {self.name} скорость: {self.speed} - превышение")
        else:
            print(f"У машины {self.name} скорость: {self.speed}")


class PoliceCar(Car):
    pass


car_1 = TownCar(70, "red", "Toyota", False)
car_2 = SportCar(100, "blue", "Camaro", False)
car_3 = WorkCar(50, "gray", "Gaz", False)
car_4 = PoliceCar(80, "blue", "Lada", False)

car_1.go()
car_1.show_speed()
car_1.turn()
car_1.stop()

car_2.go()
car_2.show_speed()
car_2.turn()
car_2.stop()

car_3.go()
car_3.show_speed()
car_3.turn()
car_3.stop()

car_4.go()
car_4.show_speed()
car_4.turn()
car_4.stop()