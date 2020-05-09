from math import pi


# def convert_km_to_m(val):
#     return val * 1000


class Circle:
    def __init__(self, r):
        self._r = r

    @property
    def area(self):
        return pi * self._r ** 2

    @staticmethod
    def convert_km_to_m(val):
        return val * 1000  # no self in method implementation -> static


circle_1 = Circle(5)
print(circle_1.area)
# print(circle_1.convert_km_to_m(1.5))
# print(convert_km_to_m(1.5))
print(Circle.convert_km_to_m(1.5))


