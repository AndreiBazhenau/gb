class ShopItem:
    def __init__(self, brand, price, quantity):
        self.brand = brand
        self.price = price
        self.quantity = quantity

    def make_discount(self, discount):
        self.price *= (100 - discount) / 100


class Phone(ShopItem):
    def show_screen(self):
        print('my screen')


class Tablet(ShopItem):
    def check_wifi(self):
        print('wifi is good')


class Comuter(ShopItem):
    def make_discount(self, discount):
        if discount <= 10:
            self.price *= (100 - discount) / 100
        else:
            raise Exception(f'discount overflow: {discount}')


iphone = Phone('Apple', 31000, 15)
iphone_2 = Phone('Apple', 31000, 15)

notebook_1 = Comuter('Acer', 45852, 24)

ipad_1 = Tablet('Apple', 39841, 12)

print(iphone.brand)
print(notebook_1.brand)
print(ipad_1.brand)

iphone.show_screen()
ipad_1.check_wifi()

print(iphone.price)
iphone.make_discount(15)
print(iphone.price)

print(notebook_1.price)
notebook_1.make_discount(15)
print(notebook_1.price)

# __slots__
# наследование
# полиморфизм
