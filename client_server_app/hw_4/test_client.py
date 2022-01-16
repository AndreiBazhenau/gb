# 1. Для всех функций из урока 3 написать тесты с использованием unittest. Они должны быть
# оформлены в отдельных скриптах с префиксом test_ в имени файла (например, test_client.py)

import unittest


class TestClient(unittest.TestCase):

    def test_presence_msg(self):
        self.assertIsInstance(presence_msg, dict)



if __name__ == "__main__":
    unittest.main()

