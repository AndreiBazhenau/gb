class User:
    """Project user"""

    def __init__(self, name, login, passwd, email):
        self.name = name
        self.login = login
        self.passwd = passwd
        self.email = email

    def on_get_data(self):
        print(f"имя: {self.name}, логин: {self.login}, "
              f"пароль: {self.passwd}, email: {self.email}")

    # def __hash__(self):
    #     return len(f'{self.name}{self.login}')


u = User("Ivan Ivanov", "IvIv", "11111", "iviv@mail.ru")
u.on_get_data()
# print(u.__class__.__name__)
# print(f"__name__ - {User.__name__}, \n __module__ - {User.__module__}, \n"
#       f"__dict__ - {User.__dict__}, \n __bases__ - {User.__bases__}, \n"
#       f"__doc__ - {User.__doc__}, \n __class__ - {User.__class__}, \n"
#       f"__init__ - {User.__init__}, \n __hash__ - {User.__hash__}")

print(f"__dict__ - {u.__dict__}, \n"
      f"__doc__ - {u.__doc__}, \n"
      f"__hash__ - {u.__hash__}")

# print(u.__dict__['name'])
print(u.__dict__.keys())
print(hash(u))

t = 78
print(hash(78))
7 min -> 20:19 AIR