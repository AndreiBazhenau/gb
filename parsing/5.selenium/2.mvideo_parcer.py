# Написать программу, которая собирает «Хиты продаж» с сайта техники mvideo и складывает
# данные в БД. Магазины можно выбрать свои. Главный критерий выбора: динамически загружаемые товары


from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.action_chains import ActionChains
import json
from pprint import pprint
import time
from pymongo import MongoClient

chrome_options = Options()
chrome_options.add_argument('start-maximized')

driver = webdriver.Chrome('../../../selenium/chromedriver.exe', options=chrome_options)
driver.get('https://www.mvideo.ru')
assert 'М.Видео - интернет-магазин цифровой и бытовой техники и электроники,' \
       ' низкие цены, большой каталог, отзывы. - Москва' in driver.title

wait = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.XPATH, "//a[@class='sel-product-tile-title']")))

# сначала скролим до конца т.к. при каждом нажатии подгружаются новые товары, а старые не удалются
# таким образом избегаем дублей
time.sleep(3)
while True:
    try:
        next_button = driver.find_element_by_xpath(
            "(//div[@class='gallery-layout sel-hits-block '])[2]//a[@class='next-btn sel-hits-button-next']")
        actions = ActionChains(driver)
        actions.move_to_element(next_button).click(next_button).perform()
    except:
        break

# собираем все товары
hits_block = driver.find_elements_by_xpath(
    "(//div[@class='gallery-layout sel-hits-block '])[2]//a[@class='sel-product-tile-title']")
items = []
for item in hits_block:
    item = json.loads(item.get_attribute('data-product-info'))
    items.append(item)
    pprint(item)

client = MongoClient('localhost', 27017)
db = client['mvideo']
mvideo_db = db.mvideo_db
mvideo_db.insert_many(items)
