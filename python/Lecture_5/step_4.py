f_obj = open('some_file.txt', 'r')

f_obj.seek(36)
# f_obj.seek(2)
# f_obj.read(2)

print(f'current position: {f_obj.tell()}')
line = f_obj.read(3)
print(line)

f_obj.close()
