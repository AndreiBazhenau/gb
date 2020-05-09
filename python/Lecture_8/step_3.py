from math import pi


class Circle:
    def __init__(self, r):
        self._r = r

    @property
    def area(self):
        return pi * self._r ** 2

    @staticmethod
    def convert_km_to_m(val):
        return val * 1000

    # @staticmethod
    @classmethod
    def from_km(cls, val):
        return cls(val * 1000)  # working with class


# product_1 = Phone(Phone.convert_usd_to_rub(527.58))

# make circle with radius in km
circle_1 = Circle(Circle.convert_km_to_m(1.5))  # make instance, static method call

circle_2 = Circle.from_km(1.5)

print(circle_1.area)
print(circle_2.area)


class SuperCircle(Circle):
    pass


circle_3 = SuperCircle.from_km(1.5)
# circle_3 = SuperCircle(SuperCircle.convert_km_to_m(1.5))
print(type(circle_3))