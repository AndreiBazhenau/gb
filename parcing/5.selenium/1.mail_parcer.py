# 1) Написать программу, которая собирает входящие письма из своего или
# тестового почтового ящика и сложить данные о письмах в базу данных
# * от кого,
# * дата отправки,
# * тема письма,
# * текст письма полный


from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.common.by import By
import time
from pymongo import MongoClient


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

elem = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.ID, 'mailbox:password')))
elem.send_keys(password)
elem.send_keys(Keys.RETURN)

letter_link = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.CLASS_NAME, 'js-letter-list-item')))
letter_link.click()

letter_num = 30
i = 0
mail = []
while i < letter_num:
    item = {}
    item['sender'] = WebDriverWait(driver, 5).until(ec.element_to_be_clickable((By.CLASS_NAME,
                                                     'letter-contact'))).get_attribute('title')
    time.sleep(1)
    item['date'] = driver.find_element_by_class_name('letter__date').text
    item['subj'] = driver.find_element_by_class_name('thread__subject').text
    item['letter_text'] = driver.find_element_by_class_name('letter__body').text
    mail.append(item)
    print(item)

    next_mail = driver.find_element_by_class_name('button2_arrow-down')
    next_mail.click()
    i += 1

client = MongoClient('localhost', 27017)
db = client['mail']
mail_db = db.mail_db
mail_db.insert_many(mail)
