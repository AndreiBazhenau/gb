# reload перезагрузка модуля
from importlib import reload
reload(src.processing)
from src.processing import get_num_features

# 2-й способ перезагрузки модуля (reload)
import os
os.chdir('C:/Users/Alex/YandexDisk/it/gb/src')
%run processing.py
