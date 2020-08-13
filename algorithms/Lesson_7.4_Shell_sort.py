import random

size = 10
array = [i for i in range(size)]
random.shuffle(array)
print(array)


def shell_sort(array):

    assert len(array) < 4000, 'Массив слишком большой.' \
                              'Используйте другую сортировку'

    def new_increment(array):

        inc = [1, 4, 10, 23, 57, 132, 301, 701, 1750]

        # сокращаем список инкрементов до нужной длины - меньше длины списка
        while len(array) <= inc[-1]:
            inc.pop()

        # генератор: пока в списке есть значение, возвращать значение
        # данная функция запоминает своё состояние и при следующем обращении
        # к ней, она начнёт работу с этой же строки. Т.е. ещё раз сработает
        # цикл while
        while len(inc) > 0:
            yield inc.pop()

    count = 0  # счётчик количества перестановок
    # (не нужен) только для оценки эффективности алгоритма

    # в переменную increment помещаем шаг обхода
    for increment in new_increment(array):

        # переменная i начинает перебирать индексы, начиная с размера
        # инкремента и заканчивая длиной массива
        for i in range(increment, len(array)):

            # переменная j будет уменьшаться, двигаясь с шагом минус инкремент
            for j in range(i, increment - 1, -increment):
                if array[j - increment] <= array[j]:
                    break

                # если условие сверху не сработало - производим обмен
                array[j], array[j - increment] = array[j - increment], array[j]
                count += 1
                # print(array)  # вывод массива после каждого прохода
    print(count)


shell_sort(array)
print(array)
