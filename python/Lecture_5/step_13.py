import os

# files = os.listdir('.')
# for file in files:
#     if os.path.isdir(file):
#         print(f'dir: {file}')
#     elif os.path.isfile(file):
#         print(f'\tfile: {file}')

print(os.path.exists('some_file_22.txt'))
print(os.path.exists('new_dir/some_file_2.txt'))
print(os.path.exists('new_dir/first'))
print(os.path.exists('../docs'))
