import psutil
import os

#  Информация о системных вызовах и контекстных переключателях
print(psutil.cpu_stats())

#  Информация о диске
print(psutil.disk_usage("D:"))

#  Информация о состоянии памяти
print(psutil.virtual_memory())

print(dir(psutil))
print(psutil.pids())
print(os.getpid())
