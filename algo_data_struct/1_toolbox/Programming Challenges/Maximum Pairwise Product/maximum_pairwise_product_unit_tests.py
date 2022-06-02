import unittest
from random import randint
from maximum_pairwise_product import max_pairwise_product_naive, max_pairwise_product


class TestMaxPairwiseProduct(unittest.TestCase):
    def test_small(self):
        self.assertEqual(max_pairwise_product([1, 2, 3]), 6)
        self.assertEqual(max_pairwise_product([9, 3, 2]), 27)
        self.assertEqual(max_pairwise_product([7, 3, 7, 2]), 49)

    def test_type_output(self):
        """Тип результата не int"""
        self.assertIsInstance(max_pairwise_product([10, 20, 30]), int)

    def test_small_numbers(self):
        """
        Тест маленьких чисел
        1 2 3: 2*3=6
        """
        self.assertEqual(max_pairwise_product([1, 2, 3]), 6)

    def test_big_numbers(self):
        """
        Тест больших чисел
        """
        self.assertEqual(max_pairwise_product([100_000, 150_000, 200_000]), 30_000_000_000)

    def test_corner_cases(self):
        """
        Тест граничных случаев
        """
        self.assertEqual(max_pairwise_product([1, 2, 3]), 6)

    def test_random_small_numbers(self):
        # создаём 100 тест-кейсов
        for _ in range(100):
            self.arr = []
            # массив случайной длины от 2 до 100
            for _ in range(2, randint(4, 101)):
                # добавляем в массив случайные целые от 1 до 10
                self.arr.append(randint(1, 10))
            self.assertEqual(max_pairwise_product_naive(self.arr),
                             max_pairwise_product(self.arr),
                             f'Error with array: {self.arr}')

    def test_random_big_numbers(self):
        # создаём 100 тест-кейсов
        for _ in range(100):
            self.arr = []
            # массив случайной длины от 2 до 100
            for _ in range(2, randint(4, 101)):
                # добавляем в массив случайные целые от 100_000 до 200_000
                self.arr.append(randint(100_000, 200_000))
        self.assertEqual(max_pairwise_product_naive(self.arr),
                         max_pairwise_product(self.arr),
                         f'Error with array: {self.arr}')

    def test_stress(self):
        number_of_iterations = 10
        array_size = 100
        max_number = 2 * 10**5

        for _ in range(number_of_iterations):
            numbers = [randint(0, max_number) for _ in range(array_size)]
            self.assertEqual(max_pairwise_product(list(numbers)), max_pairwise_product_naive(numbers))

    def test_large(self):
        self.assertEqual(max_pairwise_product([4] * (2 * 10**5)), 16)
        self.assertEqual(max_pairwise_product([x for x in range(10**5)]), (10**5 - 1) * (10**5 - 2))
        self.assertEqual(max_pairwise_product([1] * (2 * 10**5)), 1)


if __name__ == '__main__':
    unittest.main()
