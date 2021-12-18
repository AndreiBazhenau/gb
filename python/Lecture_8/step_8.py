class NotAlphaName(Exception):
    def __init__(self, name):
        self.message = f'{name} состоит не только из букв'
        self.some_info = '...'


class NotTitleName(Exception):
    pass


def get_name():
    name = input('введите имя: ')
    if not name.isalpha():
        raise NotAlphaName(name)
    if not name[0].upper() == name[0]:
        raise NotTitleName(f'{name} написано не с заглавной буквы')
    return name


while True:
    try:
        name = get_name()
        print(f'ваше имя правильное: {name}')
    except NotAlphaName as e:
        print(f'catched NotAlphaName: {e.message} ({e.args})')
    except NotTitleName as e:
        print(f'catched NotTitleName: {e}')
    except Exception as e:
        print(f'catched some Exception: {e}')
    else:
        break
