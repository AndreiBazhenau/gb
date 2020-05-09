try:
    f_obj = open('some_file.txt', 'r')
    print(f_obj.tell())
    for line in f_obj.readlines():  # readlines() - non generator
        print(f_obj.tell())
        print(line.strip())

    print(f_obj.closed)

    f_obj.close()
    print(f_obj.closed)
except (FileNotFoundError, FileExistsError) as e:
    print(f'no file: {e}')
except Exception as e:
    print(f'strange error: {e}')
finally:
    print('всегда будет происходить')
