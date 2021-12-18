class NotAlphaName(Exception):
    pass


class NotTitleName(Exception):
    pass


def get_name():
    name = input('введите имя: ')
    if not name.isalpha():
        raise NotAlphaName(f'{name} состоит не только из букв')

    if not name[0].upper() == name[0]:
        raise NotTitleName(f'{name} написано не с заглавной буквы')
    return name


try:
    name = get_name()
    print(f'ваше имя правильное: {name}')
except NotAlphaName as e:
    print(f'catched NotAlphaName: {e}')
except NotTitleName as e:
    print(f'catched NotTitleName: {e}')
except Exception as e:
    print(f'catched some Exception: {e}')
