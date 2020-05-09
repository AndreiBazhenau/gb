workers = [
    'Георгий', 'Иван', 'Дмитрий', 'Инна', 'Петр',
    'Денис', 'Григорий', 'Георгий', 'Ольга', 'Георгий',
    'Петр', 'Иван',
]

wokers_as_set = set(workers)
# wokers_as_set.add(15)
wokers_as_list = list(wokers_as_set)
wokers_as_list.sort()

managers_as_set = {'Дмитрий', 'Ольга', 'Константин'}


print(workers)
print(wokers_as_set)
print(wokers_as_list)
print(managers_as_set.intersection(wokers_as_set))

# {'Инна', 'Георгий', 'Дмитрий', 15, 'Григорий', 'Иван', 'Денис', 'Петр', 'Ольга'}
# {'Денис', 'Ольга', 'Петр', 'Дмитрий', 'Григорий', 'Георгий', 15, 'Инна', 'Иван'}
# {'Иван', 'Григорий', 15, 'Инна', 'Георгий', 'Денис', 'Петр', 'Дмитрий', 'Ольга'}
