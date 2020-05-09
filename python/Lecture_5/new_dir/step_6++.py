with open('some_file.txt', 'r') as f_obj:
    f_obj.seek(36)
    print(f'current position: {f_obj.tell()}')
    line = f_obj.read(3)
    print(line)

print('файл закрыт автоматически')

