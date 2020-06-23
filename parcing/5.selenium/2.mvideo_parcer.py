# Написать программу, которая собирает «Хиты продаж» с сайта техники mvideo и складывает
# данные в БД. Магазины можно выбрать свои. Главный критерий выбора: динамически загружаемые товары


from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome('../../../selenium/chromedriver.exe')
driver.get('https://www.mvideo.ru')
assert 'М.Видео - интернет-магазин цифровой и бытовой техники и электроники,' \
       ' низкие цены, большой каталог, отзывы. - Москва' in driver.title

time.sleep(5)
elem1 = driver.find_element_by_class_name('c-product-tile').text #.get_property('data-product-info')
print(elem1)

elem = driver.find_element_by_partial_link_text('Хиты продаж')
print(elem)



# //div[contains(@class, "c-product-tile")]