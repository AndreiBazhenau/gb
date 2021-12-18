class Basket:
    baskets_qnty = 0
    money_units = 'rub'

    def __init__(self):
        self.items = []

    def add(self, item):
        self.items.append(item)


user_1_basket = Basket()
Basket.baskets_qnty += 1
user_2_basket = Basket()
Basket.baskets_qnty += 1

print(Basket.money_units, user_1_basket.money_units, user_2_basket.money_units)
Basket.money_units = 'usd'

print(Basket.baskets_qnty, user_1_basket.baskets_qnty, user_2_basket.baskets_qnty)
print(Basket.money_units, user_1_basket.money_units, user_2_basket.money_units)


