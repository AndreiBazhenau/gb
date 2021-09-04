# Содержание курса "Введение в обработку естественного языка"

- **bert_token.py** 
- **corpus** - файл классифицированных отзывов

[Урок 1 Предобработка текста](https://gb.ru/lessons/142818)

- **01_word_embeddings.pdf** - презентация ШАД Word Embeddings - https://lena-voita.github.io/nlp_course/word_embeddings.html
- **lesson_1_v01.ipynb**
  - Библиотека RE (regex)
  - Токенизация
  - Введение в библиотеку NTLK ((Natural Language Toolkit)
    - токенизация по предложениям и по словам
    - лемматизация и стемминг: MorphAnalyzer
    - стоп-слова: stopwords из nltk.corpus
  - Пример стандартной предобработки текста

[Урок 2 Создание признакового пространства](https://gb.ru/lessons/142819)

- **lesson_2.pptx** - Векторизация текстов - Классические подходы к обработке естественного языка
  - Векторизация текстов
  - Мешок слов BoW
  - Мешок слов CountVectorizer
  - Мешок слов TF-IDF
  - Pointwise Mutual Information (PMI)
  - Эмбединги слов
- **lesson_2_actual.ipynb**
  - Мешок слов - bag of words
  - Мешок N-грамм: ngams из ntlk.utils
  - TF-IDF (term frequency — inverse document frequency)
  - Векторайзер HashingVectorizer

[Урок 3 Embedding word2vec fasttext](https://gb.ru/lessons/142820)

- **lesson_3.ipynb**
  - Векторные представления слов (word embeddings)
  - word2vec
  - Simple chat-bot example
- **lesson_3_word_embeddings.ipynb**
  - Word embeddings
    - One-hot encodings
    - Кодировка каждого слова уникальным номером
    - Word embeddings
  - Использование слоя Embedding
  - Text preprocessing
  - Classification model
- **lesson_3_word2vec.ipynb**
  - Word2Vec
  - Skip-gram and Negative Sampling
  - Встраивание поиска и анализа

[Урок 4 Тематическое моделирование. EM-алгоритм](https://gb.ru/lessons/142821)

- **lesson_4_Embeddings.pptx** - Эмбеддинги. Word2vec, Doc2Vec, fasttext
- **lesson_4_Topic_model.pptx** - Тематическое моделирование

- **lesson_4.ipynb**
  - Word2vec (cbow - contnious Bag-of-words model & skipgram) & Fasttext
  - Тематическое моделирование
  - Разметка и извлечение именованных сущностей
    - Разметка слов с помощью частей речи (Parts-Of-Speech)
    - Сравнение POS тэггеров
    - Разметка корпусов
  - Извлечение именованных сущностей (NER) и отношений
  - SpaCy - более быстрый аналог NTLK
  - DeepPavlov
  - Извлечение отношений между словами в предложении (Relation extraction)
  - Allennlp - NLP library, built on PyTorch.
- **lesson_4_topic_modeling.ipynb**
  - Модель LDA - латентное размещение Дирихле. Реализация из библиотеки gensim
  - pyLDAvis - отображение тем на плоскости
  - Перплексия и когерентность
  - BigARTM
    - Тематические модели в BigARTM
    - Мультимодальные модели
- **lesson_4_v01.ipynb** - Тематическое моделирование

[Урок 5 Part-of-Speech разметка, NER, извлечение отношений](https://gb.ru/lessons/142822)

- **lesson_5.ipynb** - Разметка и извлечение именованных сущностей
  - Разметка слов с помощью частей речи (Parts-Of-Speech)
    -  Универсальный набор тегов части речи
    - Сравнение POS тэггеров
    - DefaultTagger
    - UnigramTagger
    - BigramTagger
    - TrigramTagger
    - RegexpTagger
    - Комбинация тэггеров
    - Создание тэггера имен
    - Разметка корпусов
  - Извлечение именованных сущностей (NER) и отношений
    - NLTK
    - Spacy
    - Deeppavlov
  - Извлечение отношений
    - Spacy
    - NLTK
    - Allennlp

[Урок 6 Классификация текста. Анализ тональности текста](https://gb.ru/lessons/142823)

- **lesson_6.ipynb**
  - Классификация текста
    - Подготовка датасета
    - Предобработка текста
    - Feature Engineering
    - Count Vectors
    - TF-IDF вектора
    - Text / NLP признаки
  - Построение моделей
    - Naive Bayes
    - Linear Classifier (Логистическая регрессия)
    - SVM
    - RandomForest
    - Boosting Model
  - Анализ тональности
  - Data Visualization - облако слов
  - Пример на русском
- **lesson_6_colab_text_classification_part1.ipynb** - Классификация текстов отзывов с IMDB на положительные/отрицательные - анализ тональности текста.
  - Придумываем новые признаки
    - Tf-idf
    - N-граммы слов
    - N-граммы символов
  - Подключаем лингвистику
    - Лемматизация и стемминг
    - NER - именованные сущности
    - Включаем дип лёрнинг
- **lesson_6_colab_text_classification_part2.ipynb** - Классификация текстов отзывов с IMDB
- **lesson_6_colab_text_classification_part3.ipynb** - Тексты переводов выполнили: Вильям Купер, Эрл Эдвард, Сэмюель Батлер.


[Урок 7 Сверточные нейронные сети для анализа текста](https://gb.ru/lessons/142824)

- **lesson_7_dl-nlp-cnn.ipynb**
  - Основные блоки нейросетей:
    - Свёрточные блоки (для текстов)
    - Рекуррентные блоки
    - Блоки пулинга
    - Блоки внимания
    - Рекурсивные нейросети
    - Графовые свёрточные нейросети
  - Text classification using CNN
    - Sentiment Analysis
      - Keras model
      - tf-idf и CountVectorizer - хорошие бейзлайны из коробки
      - Word@Vec с усреднением и логистической регрессией

[Урок 8 Рекуррентные нейронные сети RNN LSTM GRU](https://gb.ru/lessons/142825)

- **lesson_8_rnn.pptx** - Рекуррентные сети
  - Обработка последовательностей: задачи и данные
  - Рекуррентные нейронные сети: RNN, LSTM, GRU
  - Ячейки, слои и свойства
  - Проблема Batch Normalization для рекуррентных сетей
  - Layer Normalization
  - Weight Normalization
  - Perplexity и Температура
- **lesson_8_rnn.ipynb**
  - Последовательность шагов как обрабатывать тектсы и строить последовательности: 
    - удалить знаки препинания
    - удалить стоп-слова
    - привести слова к начальной форме (стемминг и лемматизация)
    - После этого мы можем представить наш текст (набор слов) в виде вектора, например, стандартными способами:
      - CounterEncoding
      - HashingVectorizer
      - TfIdfVectorizer
  - Рекуррентные сети:
    - RNN
    - LSTM
    - GRU
- **lesson_9_rnn.ipynb** - Recurrent Neural Networks (RNN) with Keras
  - simple example RNN in Keras
  - RNN layers and RNN cells
  - Cross-batch statefulness
  - RNN State Reuse
  - Bidirectional RNNs
  - Performance optimization and CuDNN kernels
    - Using CuDNN kernels when available
  - RNNs with list/dict inputs, or nested inputs
  - Build a RNN model with nested input/output

[Урок 9 Языковое моделирование](https://gb.ru/lessons/142826)

- **lesson_9_text_generation.ipynb** - генерация текста на TensorFlow Keras RNN (Евгений Онегин)

[Урок 10 Машинный перевод. Модель seq2seq и механизм внимания](https://gb.ru/lessons/142827)
- **lesson_10_nmt_colab.ipynb** - Машинный перевод на основе нейронной сети на датасете http://www.manythings.org/anki/
- **lesson_10_nmt_with_attention_colab.ipynb** - Машинный перевод с вниманием

[Урок 11 Модель Transformer-1](https://gb.ru/lessons/142828)

- **lesson_11_transformer_actual.ipynb** - Transformer model for language understanding
  - Transformer создает стопки слоев самовнимания - « Масштабируемое скалярное произведение» и « Многоголовое внимание» .
  - Positional encoding
  - Masking
  - Scaled dot product attention
  - Multi-head attention
  - Point wise feed forward network - Сеть с точечной прямой связью из двух полностью связанных слоев с активацией ReLU между ними.
  - Encoder layer and decoder layer
  - Transformer

[Урок 12 Модель Transformer-2](https://gb.ru/lessons/142829) - **Text Summarization**

- **lesson_12_summarization_new.ipynb** - Text Summarization. Задача суммаризации текста на примере генерации "сжатых" новостей. Датасет: gazeta.ru
  - Lead-3 baseline - первые 3 предложения текста в качестве summary.
  - Метрики ROUGE-N и ROUGE-L
  - TextRank - unsupervised метод для составления кратких выжимок из текста.
  - Navec - библиотека  предобученных эмбедингов для русского языка (лучше и быстрее чем RusVectors) из Natasha. Navec = large Russian text datasets + vanila GloVe + quantization
  - Lexrank - алгоритм для саммаризации текста
  - LSA - латентно-семантический анализ (*Latent semantic analysis*)
  - Summa - TextRank implementation
  - Oracle summary
  - Attention

[Урок 13 Модель BERT и GPT](https://gb.ru/lessons/142830)

- **lesson_13_BertOverview.ipynb**
  - BERT - Bidirectional Encoder Representations from Transformers - на вход нейросети будем подавать фразы, в которых 15% слов заменим на [MASK], и обучим нейронную сеть предсказывать эти закрытые маской слова.
    - Предобученный берт для предсказания пропущенных слов
    - Предобученный берт для предсказания последовательности 2 фраз
    - Fine-tuning bert
- **lesson_13_GPT2.ipynb**
  - Трансформеры
    - BPE - Byte Pair Encoding
    - GPT 2: GPT хорошо генерирует связный текст. BERT хорошо извлекает из текста информацию, классифицирует, извлекает сущности, понимает, что за текст.
    - Авторегрессионный трансформер
    - Huggingface's transformers
- **lesson_13_Question_Answering_with_a_Fine_Tuned_BERT.ipynb**
  - DeepPavlov RuBERT для ответов на вопросы. модель предобучена на датасете SberQuAD 

[Урок 14 Transfer learning](https://gb.ru/lessons/142831)

- **lesson_14_GPT_example.ipynb** - генерация из GPT твитов по примерам из аккаунта "Усы Пескова" и диалогов как на bash.org.ru
- **lesson_14_transformers.ipynb** - transformers Huggingface
  - Использование предобученных transformers
  - Классификация последовательностей
  - Экстрактивный ответ на вопрос - это задача извлечения ответа из текста, на который задан вопрос. Примером набора данных с ответами на вопросы является набор данных SQuAD
  - Языковое моделирование
  - Fine-tuning with Keras
  - Использование huggingface предобученных моделей как эмбединги.
- **lesson_14_BERT_NER.ipynb** - ноутбук из Hugging Face с дополнениями
  - Fine-tuning a model on a token classification task: how to fine-tune one of the Hugging Face 🤗 Transformers model to a token classification task, which is the task of predicting a label for each token. The most common token classification tasks are:
    - NER (Named-entity recognition) Classify the entities in the text (person, organization, location...).
    - POS (Part-of-speech tagging) Grammatically classify the tokens (noun, verb, adjective...)
    - Chunk (Chunking) Grammatically classify the tokens and group them into "chunks" that go together
  - Как использовать предобученную модель
- **lesson_14_simple_bot.ipynb**

[Урок 15 Консультация по курсовому проекту. Создание чат-бота в Telegram](https://gb.ru/lessons/142832)

- **lesson_15_chat-bot.ipynb** - создание telegram чат-бота на DialogFlow или в библиотеке telegram.ext.

 - **lesson_15_.ipynb** - телеграм-бот, который на основе запроса пользователя подбирает несколько объявлений товаров с Юлы, а если запрос не относится к одежде бот отвечает на вопрос. Обучается на:
   - Otvety.txt - ответы спарсенные с mail.ru
   - ProductsDataset.csv - спарсенные объявления одежды с Юлы

[Урок 16 Консультация по курсовому проекту. Создание чат-бота в Telegram](https://gb.ru/lessons/142833)

 - **lesson_16_GPT_tune.ipynb** - открывается только в [Colab](https://colab.research.google.com/drive/1gJtv5s9K66DS9iOabfSdHb5c8kNYGU-O) - GPT SberAI обучаясь на рецептах, генерирует рецепты по заданной фразе с указанием имеющихся продуктов.
 - **lesson_16_GPT_tune1.ipynb** - на датасете рецептов с Kaggle и предобученной модели SberAI rugpt3small_based_on_gpt2 генерирует рецепты по заданной фразе с указанием имеющихся продуктов.
 - **lesson_16_Bert_NER_ru.ipynb** - Рекомендация лекарств по симптомам на основе отзывов с сайта отзовик. 
    - Для скорости выбран самый маленький BERT для русского языка rubert-tiny.
    - Более простое применение модели: пайплайн от huggingface.
 - **lesson_16_BERT_toxicity_classification.ipynb** - классификация комментариев/постов/твитов/текстов как токсичные или неполиткорректные на основе модели huggingface ruber-tiny https://huggingface.co/cointegrated/rubert-tiny-toxicity Модель готовая, обучать не нужно. Классификация с вероятностями по 5 классам:
    - non-toxic
    - insult
    - obscenity
    - threat
    - dangerous

