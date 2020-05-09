# class Box(object):
class Box:
    def __init__(self, a, b):
        self.a = a
        self.b = b

    def __add__(self, other):
        return Box(self.a + other.a, self.b + other.b)

    def __str__(self):
        return f'прямоугольник {self.a} x {self.b}'

    def __call__(self, *args, **kwargs):
        print(f'вы мне позвонили с вопросом: {args}')



box_1 = Box(15, 20)
box_2 = Box(45, 60)
box_3 = Box(10, 30)


device_1 = box_1 + box_2 + box_3
# print(device_1.a, device_1.b)
print(box_1, box_2, box_3)
# VS
print(f'прямоугольник {box_1.a} x {box_1.b}', f'прямоугольник {box_2.a} x {box_2.b}', f'прямоугольник {box_3.a} x {box_3.b}')
print(device_1)
print(device_1.__str__())

box_3()  # call a function, object as function
box_3('когда Новый год?')  # call a function, object as function
