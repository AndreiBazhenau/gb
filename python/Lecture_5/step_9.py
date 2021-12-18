import json

# a = [1, 2, 'hello', True, {'winter': (12, 1, 2), 'summer': (6, 7, 8)}]
#
# with open('some_file_7.json', 'w') as f_obj:
#     json.dump(a, f_obj)

with open('some_file_7.json', 'rb') as f_obj:
    a = json.load(f_obj)
    print(a)

