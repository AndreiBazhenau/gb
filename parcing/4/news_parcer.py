# 1) Написать приложение, которое собирает основные новости с сайтов news.mail.ru, lenta.ru, yandex.news
# Для парсинга использовать xpath. Структура данных должна содержать: название источника, наименование новости,
# ссылку на новость, дата публикации
# 2) Сложить все новости в БД

from lxml import html
import requests
from datetime import datetime, date, time


header = {'User-Agent': 'Chrome/80.0.4150.1'}

site = 'https://m.lenta.ru/parts/news'

response = requests.get(site, headers=header)
dom = html.fromstring(response.text)

results = dom.xpath("//div[@class='parts-page__item']")
i = 1
for result in results:
    news_text = result.xpath(".//div[@class='card-mini__title']/text()")[0]
    news_link = result.xpath(".//@href")[0]
    news_link = news_link if news_link.find('http') != -1 else 'https://lenta.ru' + news_link
    news_time = result.xpath(".//time/text()")[0]
    print(i, site, news_text, news_link, news_time, datetime.today().strftime('%d-%m-%Y'))
    i += 1
