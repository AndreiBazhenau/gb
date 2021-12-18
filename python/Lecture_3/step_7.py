PI = 3.1416
perimeter_counter = 0


def calc_perimeter(radius):
    global perimeter_counter  # sad
    # global new_var
    # global PI
    # PI *= 2
    perimeter_counter += 1
    print(f'from GLOBAL {perimeter_counter}')
    result = 2 * PI * radius  # PI from global scope
    # new_var = result
    return result


r_earth = 6400000  # global var
perimeter_earth = calc_perimeter(r_earth)
print(f'go around: {perimeter_earth} m')
print(f'go around: {calc_perimeter(r_earth)} m')
print(f'go around: {calc_perimeter(6400000)} m')
print(f'go around: {calc_perimeter(1000)} m')

# print(new_var)
