# -*- coding: utf-8 -*-
import scrapy
from scrapy.http import HtmlResponse
from jobparser.items import JobparserItem


class SjruSpider(scrapy.Spider):
    name = 'sjru'
    allowed_domains = ['superjob.ru']
    search = 'python'
    start_urls = [f'https://russia.superjob.ru/vacancy/search/?keywords={search}']

    def parse(self, response: HtmlResponse):
        next_page = response.xpath('//a[@rel="next"]/@href').extract_first()
        print(next_page)

        vacansy_links = response.xpath('//div[@class="_3zucV _1fMKr undefined _1NAsu"]/*/*/*/*/*/*/a/@href').extract()
        # print(vacansy_links)
        for link in vacansy_links:
            yield response.follow(link, callback=self.vacansy_parse)
        yield response.follow(next_page, callback=self.parse)

    def vacansy_parse(selfself, response: HtmlResponse):
        name_job = response.xpath('//h1/text()').extract_first()
        salary_job = response.xpath('//span[@class="_1OuF_ ZON4b"]//text()').extract()
        # location_job = response.xpath('').extract()
        position_link = response.url
        company_job = response.xpath('//h2/text()')[2].extract()
        yield JobparserItem(name=name_job, salary=salary_job, link=position_link, company=company_job)
