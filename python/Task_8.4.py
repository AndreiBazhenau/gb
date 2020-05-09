# 4. Начните работу над проектом «Склад оргтехники». Создайте класс, описывающий склад.
# А также класс «Оргтехника», который будет базовым для классов-наследников. Эти классы
# — конкретные типы оргтехники (принтер, сканер, ксерокс). В базовом классе определить
# параметры, общие для приведенных типов. В классах-наследниках реализовать параметры,
# уникальные для каждого типа оргтехники.



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



