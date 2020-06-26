# -*- coding: utf-8 -*-
import scrapy
from scrapy.http import HtmlResponse
from jobparser.items import JobparserItem


class SjruSpider(scrapy.Spider):
    name = 'sjru'
    allowed_domains = ['superjob.ru']
    search = 'phyton'
    start_urls = ['https://www.superjob.ru/vacancy/search/?keywords=python']

    def parse(self, response: HtmlResponse):
        next_page = response.xpath('//a[@rel="next"]/@href').extract()
        print(next_page)

        vacansy_links = response.xpath('//div[@class="_3zucV _1fMKr undefined _1NAsu"]/*/*/*/*/*/*/a/@href').extract()
        print(vacansy_links)
        for link in vacansy_links:
            yield response.follow(link, callback=self.vacansy_parse)
        yield response.follow(next_page, callback=self.parse)

        pass
