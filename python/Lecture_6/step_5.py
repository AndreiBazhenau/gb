class Phone:
    def __init__(self, brand, price, quantity):
        self.__brand = brand  # private
        self._price = price  # protected
        self.quantity = quantity  # public

    def make_discount(self, discount):
        self._price *= (100 - discount) / 100

    def get_brand(self):
        return self.__brand


iphone = Phone('Apple', 31000, 15)
iphone_2 = Phone('Apple', 31000, 15)

print(iphone._price)
iphone._Phone__brand = 'xiaomi'
print(iphone.get_brand())
print(iphone._Phone__brand)  # name mangling
# print(iphone.__brand)

# print(iphone._price)
# iphone._price = 5000  # bad practice
# print(iphone._price)

# iphone.abcde = 500  # bad practice
# print(iphone.abcde)
# print(iphone_2.abcde)

# инкапсуляция -> public, protected, private -> NO in python => naming convention
# наследование
# полиморфизм
