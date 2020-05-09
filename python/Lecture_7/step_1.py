class Box:
    def __init__(self, a, b):
        self.a = a
        self.b = b

    def __add__(self, other):
        return Box(self.a + other.a, self.b + other.b)
        # return self.a + other.a


box_1 = Box(15, 20)
box_2 = Box(45, 60)
box_3 = Box(10, 30)

# device_1 = box_1 + box_2
device_1 = box_1 + box_2 + box_3
# device_1 = Box + box_3
print(device_1.a, device_1.b)

# product_1 product_2 product_3
# total_cost = product_1 + product_2 +product_3
# total_cost = product_1.price + product_2.price +product_3.price  утиная типизация
# есть ли атрибут цена???
