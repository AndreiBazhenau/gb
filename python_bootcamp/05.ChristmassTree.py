lines = int(input("How tall is the tree?"))
spaces = lines - 1
hashes = 1
tree_stump = lines - 1
while lines != 0:
    for i in range(spaces):
        print(" ", end='')
    for i in range(hashes):
        print("#", end='')
    print()
    spaces -=1
    hashes +=2
    lines -=1
for i in range(tree_stump):
    print(" ", end='')
print("#")