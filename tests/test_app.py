import unittest
from hello_world import app

class HelloWorldTestCase(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()

    def test_hello_world(self):
        response = self.app.get('/')
        self.assertIn(b'Hello Mariusz', response.data)