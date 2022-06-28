import unittest
import yaml
import os
import sys
import json
from utils import read_config, send_message, get_message


class TestReadConfig(unittest.TestCase):

    def test_read_config(self):
        self.assertIsInstance(read_config(), dict)

    def test_read_config_default_ip(self):
        self.assertEqual(read_config()['DEFAULT_IP_ADDRESS'], '127.0.0.1')

    def test_read_config_default_port(self):
        self.assertEqual(read_config()['DEFAULT_PORT'], 7777)

    def test_read_config_max_connection(self):
        self.assertEqual(read_config()['MAX_CONNECTIONS'], 5)

    def test_read_config_max_package_length(self):
        self.assertEqual(read_config()['MAX_PACKAGE_LENGTH'], 1024)

    def test_read_config_encoding(self):
        self.assertEqual(read_config()['ENCODING'], 'utf-8')


if __name__ == '__main__':
    unittest.main()
