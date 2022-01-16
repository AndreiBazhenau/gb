import unittest
import time
from server import handle_message


class TestHandleMessage(unittest.TestCase):

    def setUp(self):

        self.presence_success_msg = {
                    "action": "presence",
                    "time": time.time(),
                    "type": "status",
                    "user": {
                            "account_name": "C0deMaver1ck",
                            "status": "Yep, I am here!"
                            }
                    }

    def test_handle_message_type_dict(self):
        self.assertIsInstance(handle_message(self.presence_success_msg), dict)

    def test_handle_message_action_presence(self):
        self.assertEqual(handle_message(self.presence_success_msg)['response'], 200)

    def test_handle_message_alert_ok(self):
        self.assertEqual(handle_message(self.presence_success_msg)['alert'], 'OK')


if __name__ == '__main__':
    unittest.main()
