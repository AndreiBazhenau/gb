# a = 5
# b = 7
#
# c = a + b
# # d = a.__add__(b)
# # d = a * b
# # d = a.__mul__(b)
# d = a.__truediv__(b)
#
# print(c, type(c))
# print(d, type(d))

class Figure:
    def __init__(self):
        self.area = None

    def __add__(self, other):
        result = Figure()
        result.area = self.area + other.area  # self - слева от "+", other - справа от "+"
        # result = self.area + other.area
        # return result  #  int or float
        return result  # Figure


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


class Pentagon(Figure):
    def __init__(self, edges):
        super().__init__()
        self.edges = edges
        self.calc_area()

    def calc_area(self):
        pass


box_1 = Box(15, 20)
box_2 = Box(45, 60)
box_3 = Box(30, 50)
circle_1 = Circle(10)

# device_1 = box_1 + box_1 + circle_1
device_1 = box_1 + box_2 + box_3 + circle_1
# print(device_1.a, device_1.b)
print(box_1.area, box_2.area, box_3.area, circle_1.area)
print(device_1.area)

# float + Box ???

# 5 + 9
# other = 9
# 'hello' + 'world'
# other = 'world'
# print(5 + 'hello')
# print(5 + 5.5)
