# 1) Написать приложение, которое собирает основные новости с сайтов news.mail.ru, lenta.ru, yandex.news
# Для парсинга использовать xpath. Структура данных должна содержать: название источника, наименование новости,
# ссылку на новость, дата публикации
# 2) Сложить все новости в БД

from lxml import html
import requests
from pprint import pprint

header = {'User-Agent': 'Chrome/80.0.4150.1'}

site = 'https://lenta.ru'

response = requests.get(site, headers=header)
dom = html.fromstring(response.text)
#pprint(dom)
results = dom.xpath("//div[contains(@class,'item')]")
i = 1
for result in results:
    news_text = result.xpath(".//a/text()")
    news_link = result.xpath(".//@href")
    if len(news_text) > 0:
        print(i, news_text[0], news_link)
    i += 1

