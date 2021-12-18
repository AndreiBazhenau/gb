class ShopItem:
    # def __init__(self, *args, **kwargs):
    def __init__(self, brand, price, quantity):
        # self.brand = args[0]
        # self.price = args[1]
        # self.quantity = args[2]
        self.brand = brand
        self.price = price
        self.quantity = quantity

    def make_discount(self, discount):
        self.price *= (100 - discount) / 100


class Phone(ShopItem):
    # def __init__(self, brand, price, quantity, memory=None):
    #     super().__init__(brand, price, quantity)
    # def __init__(self, *args, **kwargs):
    def __init__(self, brand, price, quantity, **kwargs):
        super().__init__(brand, price, quantity)
        self.memory = kwargs.get('memory', None)

    def show_screen(self):
        print('my screen')


class Tablet(ShopItem):
    def check_wifi(self):
        print('wifi is good')


class Comuter(ShopItem):
    pass


iphone = Phone('Apple', 31000, 15)
iphone_2 = Phone('Apple', 31000, 15, memory=256)

notebook_1 = Comuter('Acer', 45852, 24)

ipad_1 = Tablet('Apple', 39841, 12)


print(iphone.memory)
print(iphone_2.memory)

# наследование

