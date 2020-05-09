workers = ['Георгий', 'Иван', 'Дмитрий', 'Инна', 'Петр', 'Денис']

# print(workers.index('Инна'))
# new_worker = 'Олег'
# # workers.insert(workers.index('Инна'), new_worker)
# workers.insert(workers.index('Инна') + 1, new_worker)
# print(workers)

new_workers = ['Григорий', 'Георгий', 'Ольга', 'Георгий']
# workers.insert(workers.index('Инна') + 1, new_workers)
workers.extend(new_workers)
print(workers)

# while workers:
#     current = workers.pop()
#     # current = workers.pop(0)
#     print(f'Поздравляем, {current}!')
#
# print(workers)

# print(workers.count('Георгий'))
# workers.remove('Георгий')
# print(workers)
# print(workers.count('Георгий'))

while workers.count('Георгий') > 1:
    workers.remove('Георгий')
print(workers)
workers.append('Георгий')
print(workers)
