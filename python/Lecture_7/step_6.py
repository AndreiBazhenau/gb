# odd_numbers = (el for el in range(100) if not el % 2)
#
# print(odd_numbers)
# # print(odd_numbers[0])
# print(next(odd_numbers))
# print(next(odd_numbers))
# print(next(odd_numbers))

# from abc import ABC, abstractmethod
#
#
# class AbstractIter(ABC):
#     @abstractmethod
#     def __iter__(self):
#         pass  # return iterable
#
#     @abstractmethod
#     def __next__(self):
#         pass  # return next element

class CubeSeries:
    def __init__(self, max_num):
        self._max_num = max_num

    def __iter__(self):
        return (el ** 3 for el in range(1, self._max_num + 1))
        # return [el ** 3 for el in range(1, self._max_num + 1)]


a = CubeSeries(5)
a_iterator = iter(a)
print(dir(a_iterator))
# print(type(a))
# print(type(a_iterator))
# print(next(a_iterator))
# print(next(a_iterator))
# print(next(a_iterator))

for item in a:
    print(item)
