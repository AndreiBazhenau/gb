[Фреймворк PyTorch для разработки искусственных нейронных сетей](https://gb.ru/lessons/134922)
---

[Урок 1 Введение в PyTorch](https://gb.ru/lessons/134922)

- Установка
- Тензоры
- Введение в синтаксис pytorch и Тензорные вычисления
  - Тензоры в pytorch
  - Немного о различиях в функциях PyTorch
  - Инициализация тензоров
  - Случайная выборка
  - Математические операции
  - Индексирование
  - Из numpy в pytorch и обратно
  - torch.cuda
- Вычислительный граф и Автоматическое диференцирование
- Погружаемся в детали
  - Слои
    - Линейный слой (Линейное преобразование)
    - Сверточный слой (Convolutional layer)
    - Padding
    - Stride
    - Dilate
    - Cубдискритизирующий слой (Downsampling, Polling Layer)
  - Инициализация весов и функции активации
    - Проблема затухающего градиента
    - Rectifier Linear Unit ReLU
    - Инициализация весов
    - Xavier initialization
    - He initialization
  - Оптимизаторы
    - SGD
    - Momentum (импульс)
    - Adagrad
    - RMSProp
    - Adam
- Алгоритм обучения в pytorch
- Датасет: загрузка данных и даталоадер
- Построение нейронной сети
- Обучения модели
- Сохранение и загрузка модели
- Tensorflow vs PyTorch: различия
- Где полученные знания можно применить

[Урок 2 CNN. Детектирование](https://gb.ru/lessons/134923) - Object Detector

- **lesson_2.ipynb**
  - Что это такое object detector (обнаружение объекта)
  - Чем задача детекции отличается от классификации
  - Типы методов детектирования
    - Sliding Window Approach
    - Two-shot Detectors
      - R-CNN Object Detector
      - Fast R-CNN Object Detector
      - Faster R-CNN Object Detector
      - Mask-RCNN
    - One-shot detectors
      - You only look once (YOLO)
      - Non-maximum Suppression (NMS)
      - SSD (Single Shot MultiBox Detector)
      - Retina Net
  - Loss-функции
    - В общем о функциях потерь в pytorch
    - Какие функции потерь доступны в pytorch
      - Mean Absolute Error (L1 Loss Function)
      - Mean Squared Error Loss Function
      - Negative Log-Likelihood Loss Function
      - Cross-Entropy Loss Function
      - Triplet Margin Loss Function
    - Создание своей функции потерь в pytorch
    - Loss в задаче object detector
  - Подготовка данных
    - Dataset и Dataloader
    - Нормализация данных
    - Аугментация данных
      - Модуль transforms
- **lesson_2_gb-road-sign-detection-pytorch.ipynb** - практика

[Урок 3 Сегментация изображений](https://gb.ru/lessons/134924)

- **lesson_3.ipynb**
  - Что такое сегментации изображений
  - Где данная технология применяется
  - Методы сегментации
    - Fully Convolutional Network
    - SegNet
    - Unet
    - LinkNet
    - PSPNet - Pyramid Scene Parsing Network
    - FPN - Feature Pyramid Network 
  - Метрики и оценка качества
    - Коэффициент DICE
    - Intersection over Union
  - Ссылки на:
    - Unet https://www.kaggle.com/julichitai/gb-segmentation-for-self-driving-cars-pytorch
    - Предобученные модели и как с ними работать в PyTorch: https://www.kaggle.com/julichitai/gb-asl-alphabet-classification-pytorch
- **lesson_3_gb-asl-alphabet-classification-pytorch.ipynb** - Предобученные сети, которыми можно пользоваться
  - Обзор архитектуры сетей:
    - LeNet'98
    - AlexNet'12
    - VGG'14
    - VGG'16
    - GoogLeNet
    - ResNet'15
  -  Распознавание алфавита языка жестов на ResNet'50

[Урок 4 Generative adversarial networks](https://gb.ru/lessons/134925) - генеративно-состязательные сети (обучение без учителя)

- **lesson_4.ipynb**

  - Metric Learning
    - Triplet loss
    - Contrastive loss
    - Embeddings. Признаки предпоследнего слоя для поиска ближайших соседей.
    - Модель для поиска ближайших соседей (картинок) и отсекания их по отсечке, чтобы понять:
      - Кто из людей в тренировочных данных изображен на новом фото?
      - На двух новых фото один и тот же человек или нет?
      - Даны 3 фото нового человека. Изображен ли он на еще одном фото?
  - Unsupervised Learning. Обучение без учителя
    - Autoencoder
    - Variational Autoencoder (VAE)
    - Интерполяции
      - Операции с latent space
  - Generative Advarials Networks (GANs) - генеративно-состязательные сети
    - Архитектура
    - Процесс обучения

- **hw_4.ipynb** - Обучение GAN генератора создавать точки, которые будут лежать на графике функции

  y = sin(x)/x - x/10. График функции задаётся в датафрейме.


[Урок 5 LSTM](https://gb.ru/lessons/134926)

- 

