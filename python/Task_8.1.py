# 1) Реализовать класс «Дата», функция-конструктор которого должна принимать
# дату в виде строки формата «день-месяц-год». В рамках класса реализовать
# два метода. Первый, с декоратором @classmethod, должен извлекать число,
# месяц, год и преобразовывать их тип к типу «Число». Второй, с декоратором
# @staticmethod, должен проводить валидацию числа, месяца и года (например,
# месяц — от 1 до 12). Проверить работу полученной структуры на реальных данных.


class Date:
    # def __init__(self, date):
    #     self.date = date

    @classmethod
    def date_to_num(cls, date):
        #cls.date = date
        number, month, year = date.split('-')
        return int(number), int(month), int(year)

    @staticmethod
    def validation(number, month, year):
        return f"{'День - ok' if 1 <= number <= 31 else f'День не прошёл валидацию'},\
 {'Месяц - ok' if 1 <= month <= 12 else f'Месяц не прошёл валидацию'},\
 {'Год - ok' if 1000 <= year <= 3000 else f'Год не прошёл валидацию'}"


print(Date.date_to_num('10-05-1915'))
print(Date.date_to_num('10-05-1925'))

print(Date.validation(10, 12, 1900))