from math import pi


class Circle:
    def __init__(self, r):
        self._r = r
        self._area = None

    @property
    def area(self):
        # if not self._area:  # 0 -> True
        if self._area is None:
            # print('calc area')
            self._area = pi * self._r ** 2
        return self._area

    # @area.setter
    # def area(self, val):
    #     self._area = val

    @staticmethod
    def convert_km_to_m(val):
        return val * 1000  # no self in method implementation -> static


circle_1 = Circle(5)
print(circle_1.area)
# circle_1.area = 122
print(circle_1.area)
print(Circle.convert_km_to_m(1.5))
