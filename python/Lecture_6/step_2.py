class Basket:
    def __init__(self):
        self.items = []

    def add(self, item):
        self.items.append(item)


class Phone:
    def __init__(self, brand, price, quantity):
        self.brand = brand
        self.price = price
        self.quantity = quantity

    def make_discount(self, discount):
        self.price *= (100 - discount) / 100


iphone = Phone('Apple', 31000, 15)  # создать инстанс класса Phone
iphone_2 = Phone('Apple', 31000, 15)
s_galaxy = Phone('Samsung', 28000, 19)

user_1_basket = Basket()  # создать инстанс класса Basket
user_2_basket = Basket()

user_1_basket.add(iphone)
user_1_basket.add(iphone_2)

print(user_1_basket.items)
print(user_2_basket.items)

# user_1_basket.add(s_galaxy)
# print(user_1_basket.items)
# # print(user_1_basket.items[0].price)
# # print(user_1_basket.items[1].price)
# # print(user_1_basket.items[2].price)

print(type(iphone), type(s_galaxy))
print(type(user_1_basket))
print(type(user_1_basket) is Basket, type(user_1_basket) is Phone)
print(isinstance(user_1_basket, Basket))
