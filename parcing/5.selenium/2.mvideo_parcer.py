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
#print(elem1)

# blocks = driver.find_element('gtm-push-products')
blocks = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.XPATH, "(//div[@class='gallery-layout sel-hits-block '])[2]"))).text
print(blocks)

print(" ====== ")

block = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.XPATH, "(//div[@class='gallery-layout sel-hits-block '])[2]"))).get_attribute('data-init-param')
print(block)

print(" ====== ")
#block15 = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.XPATH, "((//div[@class='gallery-layout sel-hits-block '])[2]//ul//@data-product-info")))

block1 = driver.find_elements_by_xpath("//div[@class='gallery-layout sel-hits-block ']//ul//@data-product-info")
print(block1)

# https://stackoverflow.com/questions/4531995/getting-attribute-using-xpath