# you’ll receive an algebraic equation and solve for x. Know that x will always be
# the 1st value received and you only will deal with addition. Here is a sample of calling the
# function and then the output.
# print(solve_eq("x + 4 = 9”))
# x = 5

def solve_eq(equation):
    x, add, num_1, equal, num_2 = equation.split()
    num_1, num_2 = int(num_1), int(num_2)  # convert string into ints
    return "x = " + str(num_2 - num_1)
print(solve_eq("x + 4 = 9"))