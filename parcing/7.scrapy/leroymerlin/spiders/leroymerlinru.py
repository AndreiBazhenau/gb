# -*- coding: utf-8 -*-
import scrapy
from scrapy.http import HtmlResponse
from leroymerlin.items import LeroymerlinItem
from scrapy.loader import ItemLoader

class LeroymerlinruSpider(scrapy.Spider):
    name = 'leroymerlinru'
    allowed_domains = ['leroymerlin.ru']
    # start_urls = ['http://leroymerlin.ru/']

    def __init__(self, search):
        # К каждому экземпляру класса будет появляться свойство, чтобы принять у раннера параметр прописываем search
        self.start_urls = [f'https://leroymerlin.ru/search/?q={search[0]}', f'https://leroymerlin.ru/search/?q={search[1]}']

    def parse(self, response):
        # Если мы передаём собранный xpath элемент а т.е. ссылку,
        # он это понимает и не нужно добавлять параметр href...
        ads_links = response.xpath('//h3/a[@class="snippet-link"]')
        # ads_links = response.xpath('//h3/a[@class="snippet-link"]/href(()').extract() # более длинный вариант
        for link in ads_links:
            # ...поэтому метод follow извлекает ссылку и делает get-запрос
            yield response.follow(link, callback=self.parse_ads)

    def parse_ads(self, response: HtmlResponse):
        # определяем под какую структуру подганять данные (item)
        # избавляем паука от извлечений. Это делает loader паралельно
        loader = ItemLoader(item=LeroymerlinItem(), response=response)  # Работаем через item loader
        loader.add_xpath('photos', '//div[contains(@class,"gallery-img-wrapper")]/div/@data-url')
        loader.add_xpath('name', '//h1/span/text()')
        yield loader.load_item()  # работа через лоадер ускоряет сбор данных на 30%

    # вариант без лоадера
    # photos = response.xpath('//div[contains(@class,"gallery-img-wrapper")]/div/@data-url').extract()
    # name = response.xpath('//h1/span/text()').extract_first()
    # yield AvitoItem(name=name,photos=photos)
