def calc_perimeter(radius):
    # radius = 1000  # local var
    result = 2 * 3.1416 * radius
    # return 2 * 3.1416 * radius
    return result


r_earth = 6400000
perimeter_earth = calc_perimeter(r_earth)
print(f'go around: {perimeter_earth} m')
print(f'go around: {calc_perimeter(r_earth)} m')
print(f'go around: {calc_perimeter(6400000)} m')
print(f'go around: {calc_perimeter(1000)} m')

