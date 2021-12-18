acronim = input("Convert to acronim:")
acronim = acronim.upper()  # conver all to UPPER CASE
list = acronim.split()
for i in list:
    print(i[0], end='')
print()  #добавляет пустую строчку