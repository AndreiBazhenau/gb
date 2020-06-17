# 1) Написать приложение, которое собирает основные новости с сайтов news.mail.ru, lenta.ru, yandex.news
# Для парсинга использовать xpath. Структура данных должна содержать: название источника, наименование новости,
# ссылку на новость, дата публикации
# 2) Сложить все новости в БД

from lxml import html
import requests
from datetime import datetime, timedelta
from pprint import pprint

header = {'User-Agent': 'Chrome/80.0.4150.1'}

site = 'https://m.lenta.ru/parts/news'
response = requests.get(site, headers=header)
dom = html.fromstring(response.text)
results = dom.xpath("//div[@class='parts-page__item']")
news = []
for result in results:
    item = {}
    news_link = result.xpath(".//@href")[0]
    news_link = news_link if news_link.find('http') != -1 else 'https://lenta.ru' + news_link
    item['source'] = 'https://m.lenta.ru/parts/news'
    item['title'] = result.xpath(".//div[@class='card-mini__title']/text()")[0]
    item['link'] = news_link
    item['date'] = result.xpath(".//time/text()")[0]
    news.append(item)


site = 'https://news.mail.ru'
response = requests.get(site, headers=header)
dom = html.fromstring(response.text)
results = dom.xpath('//ul/li | //a[@class="newsitem__title link-holder"]')
news = []
for result in results:
    item = {}
    news_link = result.xpath(".//@href")[0]
    item['link'] = site + news_link
    item['title'] = result.xpath(".//text()")[0].replace("\xa0", " ")
    response1 = requests.get(site + news_link, headers=header)
    dom1 = html.fromstring(response1.text)
    datetime = dom1.xpath('.//@datetime')[0]
    item['date'] = datetime.replace("T", " ").replace("+03:00", "")
    item['source'] = dom1.xpath('//span[@class="note"]//span[@class="link__text"]/text()')[0]
    news.append(item)


site = 'https://yandex.ru'
response = requests.get(site + '/news', headers=header)
dom = html.fromstring(response.text)
results = dom.xpath("//tr/td")
news = []
for result in results:
    item = {}
    news_link = result.xpath(".//h2//@href")[0]

    item['link'] = site + news_link
    source_date = result.xpath('.//div[@class="story__date"]/text()')[0].replace("\xa0", " ")
    if source_date.find(' вчера в ') > -1:
        pos = source_date.find(' вчера в ')
        item['source'] = source_date[:pos]
        item['pos'] = pos
        item['date'] = source_date[pos + 9:] + ' ' + (datetime.today() - timedelta(days=1)).strftime('%d-%m-%Y')
    else:
        item['source'] = source_date[:-6]
        item['date'] = source_date[-5:]

    item['title'] = result.xpath(".//h2//text()")[0]
    news.append(item)

pprint(news)

