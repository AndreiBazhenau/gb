# generate a list of evens from 0 through 20
#output that list on 1 line with a space between each value

even_list = [i*2 for i in range(20)]
for i in even_list:
    if i <= 20:
        print(i, end=" ")