from abc import ABC, abstractmethod


class Figure(ABC):
    def __init__(self):
        self.area = None

    def __add__(self, other):
        result = Figure()
        result.area = self.area + other.area
        return result

    def __lt__(self, other):
        return self.area < other.area

    def __eq__(self, other):
        return self.area == other.area

    @abstractmethod
    def calc_area(self):
        pass  # no implementation


class Box(Figure):
    def __init__(self, a, b):
        super().__init__()
        self.a = a
        self.b = b
        self.calc_area()

    def calc_area(self):
        self.area = self.a * self.b


class Circle(Figure):
    def __init__(self, r):
        super().__init__()
        self.r = r
        self.calc_area()

    def calc_area(self):
        self.area = 3.14 * self.r ** 2


box_1 = Box(15, 20)
box_2 = Box(45, 60)
box_3 = Box(30, 50)
box_4 = Box(15, 20)
circle_1 = Circle(10)

print(box_3 < box_1)
print(box_1 < circle_1)
print(box_1 == box_4)
