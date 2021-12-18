import math
mult_d_list = [[0] * 10 for i in range(10)]   #create a 10x10 list

for i in range(10):
    for j in range(10):
        mult_d_list[i][j] = "{} : {}".format(i, j)

for i in range(10):
    for j in range(10):
        print(mult_d_list[i][j], end=" || ")
    print()
print()

import math
mult_d_list = [[0] * 10 for i in range(10)]   #create a 10x10 list

for i in range(1, 10):
    for j in range(1, 10):
        mult_d_list[i][j] = i * j
        print(mult_d_list[i][j], end=", ")
    print()