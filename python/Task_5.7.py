# 7. Создать (не программно) текстовый файл, в котором каждая строка должна содержать
# данные о фирме: название, форма собственности, выручка, издержки.
# Пример строки файла: firm_1 ООО 10000 5000.
# Необходимо построчно прочитать файл, вычислить прибыль каждой компании, а также среднюю
# прибыль. Если фирма получила убытки, в расчет средней прибыли ее не включать. Далее реализовать
# список. Он должен содержать словарь с фирмами и их прибылями, а также словарь со средней
# прибылью. Если фирма получила убытки, также добавить ее в словарь (со значением убытков).
# Пример списка: [{“firm_1”: 5000, “firm_2”: 3000, “firm_3”: 1000}, {“average_profit”: 2000}].
# Итоговый список сохранить в виде json-объекта в соответствующий файл.
# Пример json-объекта:
# [{"firm_1": 5000, "firm_2": 3000, "firm_3": 1000}, {"average_profit": 2000}]
# Подсказка: использовать менеджеры контекста.

import json

sum_profit = 0
num_profit_firm = 0
profit_dict = {}
av_profit_dict = {}
try:
    with open("5.7.txt", "r", encoding="utf-8") as file_obj:
        for line in file_obj:
            # print(line.strip())
            # print(type(line), line.strip())
            firm_list = list(line.split())
            # print(type(firm_list), firm_list)
            profit = int(firm_list[2]) - int(firm_list[3])
            #print(f"Прибыль компании {firm_list[0]}: {profit}")
            if profit > 0:
                sum_profit += profit
                num_profit_firm += 1
            av_profit = sum_profit / num_profit_firm
            profit_dict.update({firm_list[0]: profit for i in range(len(firm_list))})
        print(f"Компаний с прибылью: {num_profit_firm}. Средняя прибыль: {av_profit:.2f}")
        av_profit_dict.update({"average_profit": av_profit})
        #print(profit_dict)
        #print(av_profit_dict)
        firm_list = [profit_dict, av_profit_dict]
        #print((firm_list))
except IOError:
    print("Ошибка")

try:
    with open("5.7.json.txt", "w", encoding="utf-8") as file_obj:
        json.dump(firm_list, file_obj)
except IOError:
    print("Ошибка")
