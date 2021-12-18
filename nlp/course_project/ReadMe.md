# Курсовой проект "Создание чат-бота в Telegram" по курсу "Введение в обработку естественного языка"

В курсовом проекте реализовано построение telegram чат-бота по классификации сообщений по признаку спам/не спам.

Модель классификации основана на Count Vectorizer из библиотеки sklearn. Очистка текста произведена с помощью stop_words, punctuation из string и pymorphy2.

В качестве основы для построения модели классификации был взят подход из материала урока № 6.

Данные для обучения модели экспортированы из телеграм-чата. Датасет состоит из двух частей. Первая часть - это экспорт всех сообщений телеграм-чата с помощью стандартных средств мессенджера telegram в формате json. Из чата с помощью другого бота удалялись спамные сообщения и сохранялись в служебный телеграм-чат. Вторая часть датасета - это логи из служебного телеграм-чата, где содержатся спам-сообщения, которые были удалены из основного чата.

Под спамными сообщениями понимаются:

- объявления о покупке, продаже и аренде квартир
- объявления о поиске работы
- объявления о продаже товаров
- объявления рекламного характера услуг (услуги маникюра, нянь, репетиторов, сантехников и т.п.)
- и так далее.

## Содержание

- 1_spam_bot_data_process.ipynb - загрузка данных, их обработка и сохранение
- 2_spam_bot_model.ipynb - построение модели, тюнинг модели и её сохранение
- 3_spam_bot.py - код для выполнения бота
- spam_bot.py - код для запуска бота на сервере.

## Дополнительная информация

Пообщаться с ботом и отправить ему сообщение для классификации спам/не спам можно перейдя по ссылке: http://t.me/ad_keeper_bot

## Идеи по дальнейшему развитию проекта

- !!! обучить модель на основе https://github.com/egorborisov/jobs_article/blob/main/jobs_research.ipynb
- Изменить threshold:
  - https://stats.stackexchange.com/questions/384833/adjusting-probability-threshold-for-sklearns-logistic-regression-model
  - https://towardsdatascience.com/calculating-and-setting-thresholds-to-optimise-logistic-regression-performance-c77e6d112d7e

- Пишем простой граббер для Telegram чатов на Python https://medium.com/swlh/build-a-telegram-bot-in-go-in-9-minutes-e06ad38acef1  https://proglib.io/p/pishem-prostoy-grabber-dlya-telegram-chatov-na-python-2019-11-06

- Spam Classifier in Python from scratch https://towardsdatascience.com/spam-classifier-in-python-from-scratch-27a98ddd8e73

- How to deploy ML models with Telegram Bots https://medium.com/analytics-vidhya/how-to-deploy-machine-learning-models-on-android-and-ios-with-telegram-bots-a6fb16922741