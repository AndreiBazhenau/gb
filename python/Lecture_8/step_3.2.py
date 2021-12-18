class User:
    users_count = 0

    def __init__(self, name, gender):
        self._name = name
        self._gender = gender

    @property
    def name(self):
        return f'мистер {self._name}' if self._gender == 'M' else f'мисс {self._name}'

    @name.setter
    def name(self, val):
        if type(val) == str and val.isalpha():
            self._name = val
        else:
            raise TypeError('Wrong type for name')

    @classmethod
    def create(cls, name, gender):
        cls.users_count += 1
        return cls(name, gender)


# user_1 = User('Иван', 'M')
# user_2 = User('Мария', 'F')

print(User.users_count)
user_1 = User.create('Иван', 'M')
print(User.users_count)
user_2 = User.create('Мария', 'F')
print(User.users_count)

print(user_1.name)
user_1.name = 'Петр'
# user_1.name = 158
print(user_1.name)
print(user_2.name)
