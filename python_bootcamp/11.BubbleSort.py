#Bubble sort - сортировка пузырьковым методом - сортировка методом попарных перестановок
import random
num_list = []
for i in range(5):
    num_list.append(random.randrange(1, 9))
for i in num_list:
    print(i, end="")

i = len(num_list) - 1
while i > 1:
    j = 0
    while j < i:
        print("\nIs {} > {}".format(num_list[j], num_list[j+1]))
        print()
        if num_list[j] > num_list[j+1]:
            print("Switch")
            temp = num_list[j]
            num_list[j] = num_list[j + 1]
            num_list[j+1] = temp
        else:
            print("Don't switch")
        j += 1
        for k in num_list:
            print(k,end="")
        print()
    print("End of Round")
    i -= 1
    for k in num_list:
        print(k, end="")
    print()