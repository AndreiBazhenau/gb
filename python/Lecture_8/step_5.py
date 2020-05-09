# __getattr__

class User:
    def __init__(self, name, gender):
        self._name = name
        self._gender = gender

    def __getattribute__(self, name):
        print(f'__getattribute__: {name}')
        return super().__getattribute__(name)

    def __getattr__(self, name):
        print(f'__getattr__: {name}')
        raise AttributeError(name)
        # return 'Happy New Year'



user_1 = User('Иван', 'M')
print(user_1._name, user_1._gender)
user_1._name = 'Петр'
print(user_1._name, user_1._gender)

print(user_1._age)
print(user_1._height)

# print(user_1[0])  # __getitem__
# print(user_1[1])
# user_1[0] = 'go'  # __setitem__


