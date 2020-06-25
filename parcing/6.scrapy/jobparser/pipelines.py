# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
from pymongo import MongoClient


class JobparserPipeline:                            # Класс для обработки item'a
    def __init__(self):                             # Конструктор, где инициализируем подключение к СУБД
        client = MongoClient('localhost', 27017)
        self.mongo_base = client.vacansy_hh_scrapy

    def process_item(self, item, spider):           # Метод, куда прилетает сформированный item
        collection = self.mongo_base[spider.name]   # Выбираем коллекцию по имени паука

        if spider.name == 'hhru':       # Здесь можно сделать обработку item в зависимости от имени паука
            salary_list = []
            for _ in item['salary']:
                print(_)
                _.replace(" ", "").replace("\xa0", "")
                print(_)
                salary_list.append(_)

            print(item['salary'])
            item['salary'] = salary_list
            print(item['salary'])

            if item['salary'][0] == 'от':
                item['salary_min'] = item['salary'][1]
                if item['salary'][2] == 'до':
                    item['salary_max'] = item['salary'][3]
                else:
                    item['salary_max'] = 'NA'
            elif item['salary'][0] == 'до':
                item['salary_min'] = 'NA'
                item['salary_max'] = item['salary'][1]
            elif item['salary'][0] == 'з/п не указана':
                item['salary_min'] = 'NA'
                item['salary_max'] = 'NA'
            else:
                item['salary_min'] = 'wrong'
                item['salary_max'] = 'wrong'

            item['company'] = ' '.join(item['company']).replace("\xa0", "").replace("  ", " ").strip()

            # del item['salary']
            # collection.insert_one({'_id': item['_id'], 'salary_min': item['salary_min']})  # Добавляем в базу данных
        collection.insert_one(item)  # Добавляем в базу данных
        return item

    def __del__(self):                              # Деструктор. Код в нем выполнится, перед уничтожением объекта
        pass

# "salary": [" з/п не указана"],
# "salary": ["от ", "120 000", " до ", "180 000", " ", "руб.", " на руки"],
# "salary": ["от ", "3 000", " до ", "8 000", " ", "USD", " до вычета налогов"],
# "salary": ["от ", "100 000", " ", "руб.", " на руки"],
# "salary": ["до ", "290 000", " ", "руб.", " до вычета налогов"],
#




        # def get_currency(s):
        #     s_len = len(s)
        #     cur = ''
        #     i = 0
        #     while i < s_len:
        #         a = s[i]
        #         if '0' <= a <= '9':
        #             i += 1
        #         else:
        #             cur = cur + a
        #             i += 1
        #     return cur
        # if s.startswith('от'):
        #     s = s.replace('от', '')
        #     cur = get_currency(s)
        #     s_min = int(s.replace(cur, ''))
        #     s_max = 'NA'
        # elif s.startswith('до'):
        #     s = s.replace('до', '')
        #     cur = get_currency(s)
        #     s_max = int(s.replace(cur, ''))
        #     s_min = 'NA'
        # elif s.find('-') >= 5:
        #     pos = s.find('-')
        #     s_min = int(s[:pos])
        #     s_max = s[pos + 1:]
        #     cur = get_currency(s_max)
        #     s_max = int(s_max.replace(cur, ''))
        # else:
        #     s_min = 'NA'
        #     s_max = 'NA'
        #     cur = 'NA'
        # return s_min, s_max, cur
