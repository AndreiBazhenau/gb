import copy

# workers = ['Иван', 'Инна', 'Петр', 'Денис']
#
# # for el in workers:
# #     # workers.append('hi')
# #     # workers.pop()
# #     # workers[0] = 'hi'
# #     print(workers[0], el)
#
# # workers_cp = workers[:]
# # print(id(workers), id(workers_cp))
# # print(workers is workers_cp)
# #
# # # for el in workers[:]:
# # for el in workers_cp:
# #     workers.append(el * 2)

workers = [['Иван', 'Дмитрий'], 'Инна', 'Петр', 'Денис']
# shallow copy vs deepcopy
# workers_cp = list(workers)
# workers_cp = workers[:]
workers_cp = copy.deepcopy(workers)
print(workers_cp is workers)

print('-' * 15)
for idx in range(len(workers)):
    print(workers_cp[idx] is workers[idx])

# *************************
print('-' * 15)
for first, second, third in zip(workers, workers_cp, workers[:]):
    print(first is second, first is third)


# workers[0].append('Василиса')
# # workers[0].insert(2, 'Василиса')
# workers.append('Роман')
# print(workers)
# print(workers_cp)
#
# # O(n)
# # O(log(n))
# # O(n^2)
