# list(), tuple()

class Phone:
    # def __init__(self, brand, price, quantity, *args, **kwargs):
    def __init__(self, brand, price, quantity):
        self.brand = brand
        self.price = price
        # self.quantity = quantity
        self.quantity = quantity  # ????
        # self.a = 5

    def make_discount(self, discount):
        # print(self.a)
        self.price *= (100 - discount) / 100


# 7 min -> 20:15 AIR


class Basket:
    # def __init__(self, user):
    def __init__(self):
        self.items = []
        # self.user = user

    def add(self, item, discount=0):
        if discount:
            # print('original price', item.price)
            item.price *= (100 - discount) / 100
            # print('discounted price', item.price)
        self.items.append(item)


iphone = Phone('Apple', 31000, 15)
iphone_2 = Phone('Apple', 31000, 15)
iphone_2.make_discount(5)

s_galaxy = Phone('Samsung', 28000, 19)

# print(iphone.quantity, iphone.price, iphone.brand)
# iphone.quantity -= 1
# print(iphone.quantity, iphone.price, iphone.brand)
# print(s_galaxy.quantity, s_galaxy.price, s_galaxy.brand)
# s_galaxy.price *= 0.95
# print(s_galaxy.quantity, s_galaxy.price, s_galaxy.brand)

# s_galaxy.add(iphone)

user_1_basket = Basket()
print(user_1_basket.items)
user_1_basket.add(iphone)
# user_1_basket.add(iphone_2, discount=5)
user_1_basket.add(iphone_2)
print(user_1_basket.items)
user_1_basket.add(s_galaxy)
print(user_1_basket.items)
print(user_1_basket.items[0].price)
print(user_1_basket.items[1].price)
print(user_1_basket.items[2].price)
