# 1. Пользователь вводит данные о количестве предприятий, их наименования и
# прибыль за четыре квартала для каждого предприятия. Программа должна
# определить среднюю прибыль (за год для всех предприятий) и отдельно вывести
# наименования предприятий, чья прибыль выше среднего и ниже среднего.

# количество имя прибыль * 4
import collections
from collections import namedtuple, OrderedDict

num_comp = int(input('Введите количество предприятий для расчёта: '))
i = num_comp
new_company = namedtuple('new_company', 'comp_name profit')

comp_ord_dict = collections.OrderedDict()
while i > 0:
    new_comp = input('Введите имя предприятия: ')
    q1 = int(input('Введите прибыль за 1-й квартал: '))
    q2 = int(input('Введите прибыль за 2-й квартал: '))
    q3 = int(input('Введите прибыль за 3-й квартал: '))
    q4 = int(input('Введите прибыль за 4-й квартал: '))
    company = new_company(new_comp, q1 + q2 + q3 + q4)
    comp_ord_dict[new_comp] = q1 + q2 + q3 + q4
    #print(company)
    #print(comp_ord_dict)
    i -= 1

# считаем среднюю прибыль по всем предприятиям
sum_profit = 0
for company, profit in comp_ord_dict.items():
    sum_profit += profit
    #print(company, profit)
av_profit = sum_profit / num_comp
print('Средняя прибыль всех предприятий: ', av_profit)

# создаём списки предприятий с прибылью выше и ниже средней
list_comp_above = []
list_comp_below = []
for company, profit in comp_ord_dict.items():
    if profit < av_profit:
        list_comp_below.append(company)
    if profit > av_profit:
        list_comp_above.append(company)
print('Компании с прибылью выше средней: ', list_comp_above)
print('Компании с прибылью ниже средней: ', list_comp_below)
