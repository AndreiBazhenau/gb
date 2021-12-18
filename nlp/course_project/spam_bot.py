#!/usr/bin/env python
# coding: utf-8

# Курсовой проект "Создание чат-бота в Telegram" по курсу "Введение в обработку естественного языка"
# ---
# 
# ## Ноутбук № 3: рабочий код бота
# 
# Тот же самый код реализован в файле **spam_bot.py**

# Устанавливаем библиотеку python-telegram-bot. Ссылка на документацию https://github.com/python-telegram-bot/python-telegram-bot


#!pip install python-telegram-bot --upgrade

import pandas as pd
from telegram import Update
from telegram.ext import Updater, CommandHandler, MessageHandler, Filters, CallbackContext
import logging
import pickle
import os
import re

from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import HashingVectorizer
from sklearn import linear_model

from string import punctuation
from stop_words import get_stop_words
from pymorphy2 import MorphAnalyzer

# путь к данным
path = '../../../data/spam_detection/'


# ## Готовим модель

# предобработка текста
exclude = set(punctuation)
sw = set(get_stop_words("ru"))
morpher = MorphAnalyzer()

def preprocess_text(txt):
    txt = str(txt)
    txt = "".join(c for c in txt if c not in exclude)
    txt = txt.lower()
    txt = re.sub("\sне", "не", txt)
    txt = [morpher.parse(word)[0].normal_form for word in txt.split() if word not in exclude]
    return " ".join(txt)


# загружаем обработанный датафрейм
df = pd.read_pickle(os.path.join(path, 'df_processed.pkl'))
print(df.shape)
df.head(3)

# загружаем обученную модель
pkl_path_filename = os.path.join(path, 'lr_model.pkl')
with open(pkl_path_filename, 'rb') as file:
    lr = pickle.load(file)
lr

# загружаем CountVectorizer
pkl_path_filename = os.path.join(path, 'count_vectorizer.pkl')
with open(pkl_path_filename, 'rb') as file:
    count_vect = pickle.load(file)
count_vect


# функция проверки сообщения на спам
def check_spam(text):
    # предоработка текста сообщения
    text = preprocess_text(text)
    # преобразование текста в Series, преобразование через CountVectorizer и предсказание
    return lr.predict(count_vect.transform(pd.Series(text)))


# ## Телеграм бот

# Enable logging
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                    level=logging.INFO
                    )

logger = logging.getLogger()

# Define a few command handlers. These usually take the two arguments update and
# context. Error handlers also receive the raised TelegramError object in error.
def start(update: Update, context: CallbackContext):
    update.message.reply_text('Привет!')

def echo(update: Update, context: CallbackContext):
    msg = update.message.text
    # отвечаем на сообщение
    update.message.reply_text('Ваше сообщение: ' + msg)
    
    # проверяем сообщение на спам и отвечаем соотвтетсвующе
    if check_spam(msg) == 1:
        update.message.reply_text('Это спам!')
    else:
        update.message.reply_text('Это не спам')

# читаем токен телеграм-бота из файла и сохраняем в переменную
with open(os.path.join(path, 'token.txt'), "r") as file:
    token = file.read()

#Настройки 
# use_context (bool, optional) – If set to True uses the context based callback API (ignored 
# if dispatcher argument is used). Defaults to True. New users: set this to True.

updater = Updater(token=token, use_context=True) # Токен API к Telegram
dispatcher = updater.dispatcher

# добавляем обработчики команд (handler) в диспетчере обработчиков

# обработчик команд - /start
dispatcher.add_handler(CommandHandler("start", start))

# обработчик сообщений
dispatcher.add_handler(MessageHandler(Filters.text & ~Filters.command, echo))

# Start the Bot - Начинаем поиск обновлений
updater.start_polling(drop_pending_updates=True)
# drop_pending_updates (bool, optional) – Whether to clean any pending updates on 
# Telegram servers before actually starting to poll. Default is False

# Останавливаем бота, если были нажаты Ctrl + C
updater.idle()
