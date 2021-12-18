# 1) Реализовать класс Stationery (канцелярская принадлежность). Определить в нем атрибут
# title (название) и метод draw (отрисовка). Метод выводит сообщение “Запуск отрисовки.”
# Создать три дочерних класса Pen (ручка), Pencil (карандаш), Handle (маркер). В каждом
# из классов реализовать переопределение метода draw. Для каждого из классов метод должен
# выводить уникальное сообщение. Создать экземпляры классов и проверить, что выведет
# описанный метод для каждого экземпляра.


class Stationery:
    # атрибуты класса
    def __init__(self, title):
        self.title = title

    def draw(self):
        print("Запуск отрисовки")


class Pen(Stationery):
    def draw(self): # title отсутствует! Код работает!!
        print(f"Пишет {self.title}")


class Pencil(Stationery):
    def draw(self):
        print(f"Рисует {self.title}")


class Handle(Stationery):
    def draw(self):
        print(f"Выделяет {self.title}")


brush = Stationery("Кисть")
brush.draw()

pen = Pen("ручка")
pen.draw()

pencil = Pencil("карандаш")
pencil.draw()

marker = Handle("маркер")
marker.draw()


