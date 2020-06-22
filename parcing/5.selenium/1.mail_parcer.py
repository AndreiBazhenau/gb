# 1) Написать программу, которая собирает входящие письма из своего или
# тестового почтового ящика и сложить данные о письмах в базу данных
# * от кого,
# * дата отправки,
# * тема письма,
# * текст письма полный
# Логин тестового ящика:
# Пароль тестового ящика:

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.common.by import By
import time

try:
    with open("../../../data/login_pass.txt", "r", encoding="utf-8") as file_obj:
        for line in file_obj.readlines():
            login, password = line.split()
except IOError:
    print("Ошибка чтения логина/пароля из файла")

driver = webdriver.Chrome('../../../selenium/chromedriver.exe')
driver.get('https://mail.ru')
assert 'Mail.ru: почта, поиск в интернете, новости, игры' in driver.title

elem = driver.find_element_by_id('mailbox:login')
elem.send_keys(login)
elem.send_keys(Keys.RETURN)
time.sleep(1)
# elem = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.CLASS_NAME, 'o-control')))
elem = driver.find_element_by_id('mailbox:password')
elem.send_keys(password)
elem.send_keys(Keys.RETURN)

time.sleep(3)
assert 'Входящие - Почта Mail.ru' in driver.title

letter_link = driver.find_element_by_class_name('js-letter-list-item')

letter_link.click()

