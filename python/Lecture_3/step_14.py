# def calc_perimeter(radius):
#     return 2 * 3.1416 * radius
#
#
# earth_perimeter = calc_perimeter(6400000)
# print(f'EARTH EQUATOR: {earth_perimeter}')

calc_perimeter = lambda radius: 2 * 3.1416 * radius

earth_perimeter = calc_perimeter(6400000)
print(f'EARTH EQUATOR: {earth_perimeter}')
print(type(calc_perimeter))
