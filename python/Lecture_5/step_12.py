import os

for root, dirs, files in os.walk(r'C:\PyProjects\lesson_5\code_5'):
    # print(root)
    # print(dirs)
    # print(files)
    for file in files:
        # abs_path = f'{root}\{file}'
        abs_path = os.path.join(root, file)
        print(f'абсолютный путь: {abs_path}')
