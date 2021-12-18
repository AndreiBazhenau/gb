a_list = range(1, 11)  # create a list from 1 to 10
def dbl_num(num):   # create a function that
    return num * 2   # returns a value passed into it multiplied by 2
print(list(map(dbl_num, a_list)))

# use filter with lambda to print out even values from 1 to 10 in a list
# sample output [2, 4, 6, 8, 10]
print(list(filter((lambda x: x % 2 == 0 ), range(1,11))))

# use reduce with lambda to add up the values from 1 to 5
# sample output: 15
# reduce receives a list and returns a single result.
from functools import reduce   # You must import reduce
print(reduce((lambda x, y: x + y), range(1, 6)))



# =========== REDUCE EXPLANATION ========================================
# Reduce is a really useful function for performing some computation
# on a list and returning the result. It applies a rolling computation
# to sequential pairs of values in a list. For example, if you wanted
# to compute the product of a list of integers.
# So the normal way you might go about doing this task in python is
# using a basic for loop:
product = 1
list = [1, 2, 3, 4]
for num in list:
    product = product * num
print(product)               # product = 24

# Now let’s try it with reduce:
#from functools import reduce   # You must import reduce
product = reduce((lambda x, y: x * y), [1, 2, 3, 4])
print(product)   # Output: 24
# =======================================================================