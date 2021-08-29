# Содержание курса "Введение в обработку естественного языка"

- **bert_token.py** - 
- **corpus** - 
- 

[Урок 1 Предобработка текста](https://gb.ru/lessons/142818)
- 

[Урок 2 Создание признакового пространства](https://gb.ru/lessons/142819)
- 

[Урок 3 Embedding word2vec fasttext](https://gb.ru/lessons/142820)
- 

[Урок 4 Тематическое моделирование. EM-алгоритм](https://gb.ru/lessons/142821)
- 

[Урок 5 Part-of-Speech разметка, NER, извлечение отношений](https://gb.ru/lessons/142822)
- 

[Урок 6 Классификация текста. Анализ тональности текста](https://gb.ru/lessons/142823)
- 

[Урок 7 Сверточные нейронные сети для анализа текста](https://gb.ru/lessons/142824)
- 

[Урок 8 Рекуррентные нейронные сети RNN LSTM GRU](https://gb.ru/lessons/142825)
- 

[Урок 9 Языковое моделирование](https://gb.ru/lessons/142826)
- 

[Урок 10 Машинный перевод. Модель seq2seq и механизм внимания](https://gb.ru/lessons/142827)
- 

[Урок 11 Модель Transformer-1](https://gb.ru/lessons/142828)
- 

[Урок 12 Модель Transformer-2](https://gb.ru/lessons/142829)
- 

[Урок 13 Модель BERT и GPT](https://gb.ru/lessons/142830)
- 

[Урок 14 Transfer learning](https://gb.ru/lessons/142831)
- 

[Урок 15 Консультация по курсовому проекту. Создание чат-бота в Telegram](https://gb.ru/lessons/142832)

- **lesson_15_chat-bot.ipynb** - создание telegram чат-бота

 - **lesson_15_.ipynb** - телеграм-бот, который на основе запроса пользователя подбирает несколько объявлений товаров с Юлы, а если запрос не относится к одежде с моделью основанная на:
   - Otvety.txt - ответы спарсенные с mail.ru
   - ProductsDataset.csv - спарсенные объявления одежды с Юлы

[Урок 16 Консультация по курсовому проекту. Создание чат-бота в Telegram](https://gb.ru/lessons/142833)
 - **lesson_16_GPT_tune.ipynb** - открывается только в [Colab](https://colab.research.google.com/drive/1gJtv5s9K66DS9iOabfSdHb5c8kNYGU-O) - GPT SberAI обучаясь на рецептах, генерирует рецепты по заданной фразе с указанием имеющихся продуктов.
 - **lesson_16_Bert_NER_ru.ipynb** - Рекомендация лекарств по симптомам на основе отзывов с сайта отзовик. Для скорости выбран самый маленький BERT для русского языка rubert-tiny.
 - **lesson_16_BERT_toxicity_classification.ipynb** - классификация комментариев/постов/твитов/текстов как токсичные или неполиткорректные на основе модели huggingface ruber-tiny https://huggingface.co/cointegrated/rubert-tiny-toxicity Модель готовая, обучать не нужно.