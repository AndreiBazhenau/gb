my_list = [5, 2, 9, 1]
rand_list = []
print("Length :", len(my_list))
print("1st Index :", my_list[0])
print("1st 3 Values :", my_list[0:3])
print("9 in List :", 9 in my_list)
print("Index for 2 :", my_list.index(2))
print("How many 2s :", my_list.count(2))
my_list.remove(1) #remove the value 1
my_list.pop(0) #remove the first index
my_list.insert(4, 10)
my_list.sort()
print("Sorted :", my_list)
my_list.reverse()
print("Sorted :", my_list)