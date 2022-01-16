# 1. Для всех функций из урока 3 написать тесты с использованием unittest. Они должны быть
# оформлены в отдельных скриптах с префиксом test_ в имени файла (например, test_client.py)

import unittest
import time
from client import create_presence_msg, handle_response


class TestCreatePresenceMsg(unittest.TestCase):

    def test_create_presence_msg_type_dict(self):
        self.assertIsInstance(create_presence_msg(), dict)

    def test_create_presence_msg_action_presence(self):
        self.assertEqual(create_presence_msg()['action'], 'presence')

    def test_create_presence_msg_type_status(self):
        self.assertEqual(create_presence_msg()['type'], 'status')

    def test_create_presence_msg_user_type_dict(self):
        self.assertIsInstance(create_presence_msg()['user'], dict)

    def test_create_presence_msg_num_keys(self):
        self.assertEqual(len(create_presence_msg().keys()), 4)


class TestHandleResponse(unittest.TestCase):

    def setUp(self):

        self.msg = {
            "response": 200,
            "time": time.time(),
            "alert": "OK"
        }

    def test_handle_response_type_str(self):
        self.assertIsInstance(handle_response(self.msg), str)


if __name__ == '__main__':
    unittest.main()
