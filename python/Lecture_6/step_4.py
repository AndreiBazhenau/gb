class Basket:
    baskets_qnty = 0
    money_units = 'rub'

    def __init__(self):
        self.items = []
        # self.money_units = None

    def add(self, item):
        self.items.append(item)


user_1_basket = Basket()
user_2_basket = Basket()

print(Basket.money_units)  # working with class
print(user_1_basket.money_units)  # working with instance
