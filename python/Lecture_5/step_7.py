some_text = """9
10
11"""

# with open('some_file_2.txt', 'w') as f_obj:
# with open('some_file_3.txt', 'x') as f_obj:
# with open('some_file_5.txt', 'a') as f_obj:
with open('some_file_5.txt', 'r+') as f_obj:
    # f_obj.writelines(some_text)
    f_obj.seek(500)
    for line in some_text:
        f_obj.write(line)
