[Спортивный анализ данных. Платформа Kaggle](https://gb.ru/courses/494)
---

[Урок 1. Введение в спортивный анализ данных, Exploration Data Analysis.](https://gb.ru/lessons/114555)
- Exploration Data Analysis (EDA)
- Методы и инструменты EDA
- Почему пропустить EDA - плохая идея?
- Ключевые концепции Exploration Data Analysis
- Анализ числовых переменных
- Дескретные признаки
- Непрерывные признаки
- Категориальные признаки
- Анализ пропусков
- Анализ распределения целевой переменной
- Корреляция между числовыми признаками
- Correlation Heat Map
- Нелинейная связь между признаками
- Pair Plot
- Scatter Plot
- BoxPlot
- Категориальные переменные в разрезе целевой переменной
- Анализ распределений на идентичность на обучении и тесте
  - Kolmogorov-Smirnov Test
  - Population Stability Index
  - Adversarial Validation

- Практическое задание

[Урок 2. Обзор основных алгоритмов машинного обучения, используемых в соревнованиях](https://gb.ru/lessons/114556)

- **webinar2_catboost.ipynb**
  - Tree Structure
  - Процедура обучения градиетного бустинга (XGBoost и LightGBM)
  - Процедура обучения градиетного бустинга в CatBoost
  - Random Permutations
  - Обработка категориальных признаков
  - Categorical Feature Combinations
  - One-hot Encoding в CatBoost
  - Другие важные особенности
  - CatBoost Sklearn-API
  - Model Cross-Validation
  - Применение модели
  - CatBoost API
- **webinar2_lightgbm.ipynb** 
  - Введение и особенности LightGBM
  - Оптимизация скорости и использования памяти
  - Оптимизация качества работы алгоритма
  - Оптимальное разбиения для категориальных признаков
  - GOSS - случайный отбор на основе градиентов
  - EFB - связывание взаимоисключающих признаков
  - Как параллелится градиетный бустинг?
    - мой любимый вопрос на собеседовании :)
    - Традиционный подход
    - Feature Parallel
    - Traditional Data Parallel
  - Пример EFB
  - LightGBM API
  - LightGBM Cross-Validation
  - LightGBM Sklearn-API
- **webinar2_xgboost.ipynb**
  - Введение
  - Модель и параметры
  - Целевая функция
  - Решающие деревья
  - Tree Boosting
  - Обучение
  - Сложность модели
  - The Structure Score
  - Обучение дерева
  - Жадный алгоритм поиска оптимального разбиения
  - XGBoost API
  - XGBoost Linear
  - XGBoost Cross-Validation
  - XGBoost sklearn-API

[Урок 3. Построение надежных схем валидации решения, оптимизация целевых метрик](https://gb.ru/lessons/114557)

- Построение надежной локальной валидации
- Важность локальной валидации
- Hold-Out валидация (валидация на отложенной выборке)
- Bootstrap
- KFold валидация
- Stratified KFold валидация
- Trade-Off между Hold-Out и CV
- Что делать, если результаты кросс-валидации неустойчивые?
- Подберем количество деревьев, используя такой же подход
- Опасность переобучения на выбросы
- Валидация в задачах с привязкой ко времени
- Что делать, если распределение на train / test разное

[Урок 4. Feature Engineering, Feature Selection, part I](https://gb.ru/lessons/114558)
**webinar4_features_part1.ipynb**
- Предварительная обработка признаков
- Числовые признаки
- Категориальные признаки
- datetime - признаки

**webinar4_features_part2.ipynb**
- Оценка полезности новой переменной
- Aggregating Numeric Columns
- Aggregating Categorical Columns
- GroupBy and Delta
- Ratios
- Features Interaction

[Урок 5. Feature Engineering, Feature Selection, part II](https://gb.ru/lessons/114559)
**webinar5_feature_selection.ipynb**
- Отбор признаков на основе интерпретации поведения модели
- Классические меры важности XGBoost
- Что делает способ оценки признаков хорошим или плохим?
- Почему стандартные подходы не работает - более наглядный пример
- Permutation Importance
- sklearn-реализация permutation_importance
- eli5-реализация permutation_importance
- собственная реализация permutation_importance
- Попробуем улучшить модельку на основе permutation-importance
- SHAP
- Интерпретация прогнозов
- Гистограмма важности признаков
- SHAP Summary Plot
- SHAP Dependence Plots
- Basic decision plot features
- Выделение аномалий

**webinar5_BoostARoota.ipynb**
- Base XGBoost
- Base BoostARoota
- Optimize BoostARoota


[Урок 6. Feature Engineering, Feature Selection, part II](https://gb.ru/lessons/114560)
**webinar5_features_part3.ipynb**
1. Категориальные признаки с большим количеством уникальных значений
    1.1 Взаимодействие признаков обычно приводит к большому количеству уникальных значений
2. Обзор популярных методов обработки категорий для древовидных моделей
    2.1. One-Hot-Encoding
    - Преимущества:
    - Недостатки:
    2.2. Label and frequency encoding
    - Преимущества (по сравнению с One-Hot-Encoding):
    - Недостатки
3. Mean-Target-Encoding
    - Преимущества (по сравнению с Label-Encoding):
    - Недостатки:
      3.1 Переобучение при Mean-Target-Encoding
      3.2. Использование априорной вероятности для регуляризации
      3.3. KFold регуляризация для Mean-Target-Encoding (двойная кросс-валидация)
      3.4. Дополнительная регуляризация

**webinar5_missings.ipynb** - **Обработка пропусков**
- Обработка пропусков
- Целевая переменная
- Обнаружение отсутствующих значений
  - Численное определение недостающих значений
  - Обнаружение недостающих данных визуально с помощью библиотеки Missingno
- Причины отсутствующих значений
- Поиск причины отсутствия данных с помощью msno
- Поиск причины отсутствия данных с помощью дендограммы
- Обработка отсутствующих значений
  - Парное удаление
  - Списочное удаление / удаление строк
  - Удаление полных столбцов
- Заполнение пропусков
  - Базовые способы замены пропусков
  - Способы замены пропусков в задаче с временной зависимостью
- Линейная интерполяция
- Методы заполнения пропусков на основе ML
  - Замена пропусков с помощью KNN
- Многомерная импутация пропусков посредством связанных уравнений (MICE)
- Алгоритмы, которые умеют в обработку пропусков

[Урок 7. Тюнинг гиперпараметров, построение ансамблей алгоритмов.](https://gb.ru/lessons/114561)
**webinar6_optimization.ipynb**
- Оптимизация гиперпараметров
- Что наиболее важно понимать при настройки гиперпараметров?
- Гиперпараметры для градиетного бустинга
- Baseline XGBoost-classifier
- Как работает Байесовская оптимизация?
- RandomForest / ExtraTrees
- Линейные модели
- Ансамблирование моделей

**webinar6_stacking.ipynb**
- Ансамблирование моделей
- BaseModel
- BaseModel + OneHotEncoding
- BaseModel + LightGBM-encoder
- LightGBM with permutation
- LightGBM with different hyperparams
- XGBoost
- Prediction Correlation
- AMean
- GMean
- Rankdata
- Модель 2-го уровня: blending & stacking

[Урок 8. Консультация 2.](https://gb.ru/lessons/114562)
