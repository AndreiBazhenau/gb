PI = 3.1416


def calc_perimeter(radius):
    PI = 3.1416
    PI = PI * 2  # PI -> local
    print(f'LOCAL {PI}')
    result = 2 * PI * radius  # PI from global scope
    return result


r_earth = 6400000  # global var
perimeter_earth = calc_perimeter(r_earth)
print(f'go around: {perimeter_earth} m')
print(f'go around: {calc_perimeter(r_earth)} m')
print(f'go around: {calc_perimeter(6400000)} m')
print(f'go around: {calc_perimeter(1000)} m')
print(f'GLOBAL {PI}')
