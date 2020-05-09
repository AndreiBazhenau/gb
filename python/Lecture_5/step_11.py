import os

# files = [el for el in os.listdir('.') if el.endswith('.txt')]
# print(files)

# os.mkdir('new_dir')
# os.mkdir('new_dir/first')
# os.makedirs('new_dir_2/second')

file_full_path = r'C:\PyProjects\lesson_5\code_5\some_file_4.txt'
print(os.path.abspath(file_full_path))
print(os.path.dirname(file_full_path))
print(os.path.basename(file_full_path))
print(os.path.split(file_full_path))

dir_name, file_name = os.path.split(file_full_path)
print(dir_name, file_name)
