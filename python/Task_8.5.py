# 4. Начните работу над проектом «Склад оргтехники». Создайте класс, описывающий склад.
# А также класс «Оргтехника», который будет базовым для классов-наследников. Эти классы
# — конкретные типы оргтехники (принтер, сканер, ксерокс). В базовом классе определить
# параметры, общие для приведенных типов. В классах-наследниках реализовать параметры,
# уникальные для каждого типа оргтехники.
# 5. Продолжить работу над первым заданием. Разработать методы, отвечающие за приём
# оргтехники на склад и передачу в определенное подразделение компании. Для хранения
# данных о наименовании и количестве единиц оргтехники, а также других данных, можно
# использовать любую подходящую структуру, например словарь.
# 6. Продолжить работу над вторым заданием. Реализуйте механизм валидации вводимых
# пользователем данных. Например, для указания количества принтеров, отправленных на склад,
# нельзя использовать строковый тип данных.
# Подсказка: постарайтесь по возможности реализовать в проекте «Склад оргтехники» максимум
# возможностей, изученных на уроках по ООП.


class Store:
    equipment_num = 0

    def __init__(self, brand, model, quantity):
        self.brand = brand
        self.model = model
        self.quantity = quantity


class Equipment(Store):
    # def __init__(self):
    pass


class Printer(Equipment):
    printer_num = 0

    def __init__(self, brand, model, quantity, black_color):
        self.black_color = black_color
        super().__init__(brand, model, quantity)

    def get_printer(self, brand, model, quantity, black_color):
        self.black_color = black_color
        super().__init__(brand, model, quantity)
        printer_num += 1

    def take_printer(self, brand, model, quantity, black_color):
        self.black_color = black_color
        super().__init__(brand, model, quantity)
        printer_num += 1
        print(printer_params)

class Scanner(Equipment):
    scanner_num = 0

    def __init__(self, brand, model, quantity, network):
        self.network = network
        self.room = room
        super().__init__(brand, model, quantity)


class Phone(Equipment):
    phone_num = 0

    def __init__(self, brand, model, quantity, user):
        self.user = user
        super().__init__(brand, model, quantity)




equipment_dict = {}
#                    {'LaseJet-1020': ('HP', 5, 'black')}
"""                  модель: бренд, количество, параметр   """
while True:
    print('Вы хотите принять или поставить оргтехнику?')
    in_out = input('1 - для приёма оргтехники на склад\n2 - для поставки в компанию\nВвод:')
    if in_out == '1':
        eq_type = input('\nВыбирете тип оргтехники для приёма:\n1 - принтер\n2 - сканер\n3 - телефон:')
        if eq_type == '1':
            printer_params = input('Введите через пробел модель, бренд, количество и дополнительные параметры:\n'
                                   'для принтера: (black/color)\nдля сканера: сетевой (True/False)\n'
                                   'для телефона: имя пользователя\n:').split()
            #printer_1 = Printer(printer_params[0], printer_params[1], printer_params[2], printer_params[3])
            Printer(printer_params[0], printer_params[1], printer_params[2], printer_params[3]).get_printer(printer_params[0], printer_params[1], printer_params[2], printer_params[3])

            #Printer('HP', 'LaseJet-1020', 10, 'black')
            equipment_dict.update({printer_params[0]: (printer_params[1:4])})
            print(equipment_dict)
    elif in_out == '2':
        eq_type = input('\nВыбирете тип оргтехники для поставки:\n1 - принтер\n2 - сканер\n3 - телефон:')
