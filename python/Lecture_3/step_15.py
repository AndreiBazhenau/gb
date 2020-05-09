cities = {
    'Москва': 11000000,
    'Екатеринбург': 2000000,
    'Владивосток': 15000000,
}

# cities_sorted = dict(sorted(cities.items()))
# cities_sorted = sorted(cities.items())
# def  cities_key(el):
#     return el[1]
#
# cities_sorted = sorted(cities.items(), key=cities_key)

cities_sorted = sorted(cities.items(), key=lambda x: x[1])
print(cities_sorted)

