# -*- coding: utf-8 -*-
# Define your item pipelines here
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
import scrapy
from scrapy.pipelines.images import ImagesPipeline


# class LeroymerlinPipeline(object):
#     def process_item(self, item, spider):
#         return item

class DataBasePipeline:
    def process_item(self, item, spider):
        print(1)   # Здесь реализовать добавление в БД
        # params = params
        item['specs_params'] = dict(zip(item['specs'], item['params']))
        print('specs_params', item['specs_params'])
        # loader.add_value('par', par)
        return item


# в info содержиться информация о том, сколько прилетело фотографий, сколько скачано, сколько стоит на очереди
class LeroymerlinPhotosPipeline(ImagesPipeline):
    def get_media_requests(self, item, info):
        # проверяем есть ли фото
        if item['photos']:
            for img in item['photos']:
                try:
                    # сюда прилетает уже очищеная ссылка
                    yield scrapy.Request(img, meta=item)   # Скачиваем фото и передает item через meta
                except Exception as e:
                    print(e)

    # метод определяющий путь куда складывать файлы
    # но метод не принимает item вообще. но есть meta в scrapy.Request, который можно принять здесь
    # нужно посмотреть в документации как принимать
    # но можно выташить url из приходящего request и например ия файла
    # def file_path(self, request, response=None, info=None, ):
    #     item = request.meta             #Получаем item из meta
    #     return ''                       #Здесь необходимо вернуть путь для сохранения фотографий
    #     Если оставить return '' то работать не булет, т.е. будет заменять request на ''

    def item_completed(self, results, item, info):
        if results:
            item['photos'] = [itm[1] for itm in results if itm[0]]
        return item  # возвращаем изменённый item в return чтобы пайплайны следовали друг за другом
