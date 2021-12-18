def read_file_by_chunks(file_path, chunk_size=8):
    f_obj = open(file_path, 'r')

    while True:
        chunk = f_obj.read(chunk_size)
        if not chunk:
            f_obj.close()
            break
        # print(f'current position: {f_obj.tell()}')
        yield chunk


for line in read_file_by_chunks('some_file.txt'):
    print(line)
