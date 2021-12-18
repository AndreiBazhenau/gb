import traceback


def incorrect(a, b):
    return a / b


# res = incorrect(5, 0)
try:
    res = incorrect(5, 0)
except Exception as e:
    print('Ошибка:\n', traceback.format_exc())
