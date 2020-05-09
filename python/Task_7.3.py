class Cell:
    def __init__(self, cell_num, cell_in_row):
        self.cell_num = cell_num
        self.cell_in_row = cell_in_row

    def __add__(self, other):
        return Cell(self.cell_num + other.cell_num, self.cell_in_row)

    def __sub__(self, other):
        return Cell(self.cell_num - other.cell_num, self.cell_in_row) \
               if self.cell_num >= other.cell_num \
               else f"Невозможно вычесть: вторая клетка больше первой"

    def __mul__(self, other):
        return Cell(self.cell_num * other.cell_num, self.cell_in_row * self.cell_in_row)

    def __truediv__(self, other):
        return Cell(self.cell_num // other.cell_num, self.cell_in_row // self.cell_in_row)

    def make_order(self):
        return f'{("*" * self.cell_in_row)}\n' * (self.cell_num // self.cell_in_row) +\
               ("*" * (self.cell_num % self.cell_in_row)) \
               # if type(self) == "<class '__main__.Cell'>" else "Нет клетки"

    # def make_order(self, *args):
    #     return f'{("*" * self.cell_in_row)}\n' * (self.cell_num // self.cell_in_row) +\
    #            ("*" * (self.cell_num % self.cell_in_row)) \
    #            if isinstance(self, '__main__.Cell') == True else "Нет клетки"

    # def make_order(self):
    #     return f'{("*" * self.cell_in_row)}\n' * (self.cell_num // self.cell_in_row) +\
    #            ("*" * (self.cell_num % self.cell_in_row)) \
    #            if type(self) != "str" else f"Нет клетки"


cell_1 = Cell(18, 5)
cell_2 = Cell(15, 4)

cell_3 = cell_1 - cell_2

print(cell_1.make_order())
print()
print(cell_2.make_order())
print()
print(cell_3.make_order())