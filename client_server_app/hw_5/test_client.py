# 1. Для всех функций из урока 3 написать тесты с использованием unittest. Они должны быть
# оформлены в отдельных скриптах с префиксом test_ в имени файла (например, test_client.py)

import unittest
import time
from client import create_presence_msg, handle_response
from utils import read_config


class TestCreatePresenceMsg(unittest.TestCase):
    CONFIG = read_config()

    def test_create_presence_msg_type_dict(self):
        self.assertIsInstance(create_presence_msg(), dict)

    def test_create_presence_msg(self):
        test_presence_msg = create_presence_msg()
        # меняем время на постоянное для теста
        test_presence_msg['time'] = 999
        self.assertEqual(test_presence_msg,
                         {
                             'action': 'presence',
                             'time': 999,
                             'type': 'status',
                             'user': {
                                 "account_name": "C0deMaver1ck",
                                 "status": "Yep, I am here!"
                             }
                         }
                         )

    def test_create_presence_msg_user_type_dict(self):
        test_presence_msg = create_presence_msg()
        self.assertIsInstance(test_presence_msg['user'], dict)

    def test_create_presence_msg_num_keys(self):
        test_presence_msg = create_presence_msg()
        self.assertEqual(len(test_presence_msg.keys()), 4)


class TestHandleResponse(unittest.TestCase):

    def setUp(self):
        self.correct_msg = {
            "response": 200,
            "time": time.time(),
            "alert": "OK"
        }

        self.bad_request_msg = {
            "response": 400,
            "time": time.time(),
            "alert": "Error"
        }

        self.no_response_msg = {
            "response": 303,
            "time": time.time(),
            "alert": "No response"
        }

    def test_handle_response_type_str(self):
        self.assertIsInstance(handle_response(self.correct_msg), str)

    def test_correct_answer(self):
        self.assertEqual(handle_response(self.correct_msg), '200: OK')

    def test_bad_request(self):
        self.assertEqual(handle_response(self.bad_request_msg), '400: Error')

    def test_no_response(self):
        self.assertRaises(ValueError, handle_response, self.no_response_msg)


if __name__ == '__main__':
    unittest.main()
