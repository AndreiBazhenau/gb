import pickle

# a = [1, 2, 'hello', True]

# with open('some_file_6.bin', 'wb') as f_obj:
#     pickle.dump(a, f_obj)

with open('some_file_6.bin', 'rb') as f_obj:
    a = pickle.load(f_obj)
    print(a)

