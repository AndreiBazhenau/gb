f_obj = open('some_file.txt', 'r')

for _ in range(8):
    print(f'current position: {f_obj.tell()}')

    line = f_obj.readline()

    print(line.strip())

f_obj.close()
