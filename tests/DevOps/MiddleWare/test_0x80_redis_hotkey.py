import unittest
import random

import redis


class TestRedis(unittest.TestCase):

    def test_cli(self):
        r = redis.Redis(host='192.168.0.12', port=6379, decode_responses=True)
        v = r.get("name")
        print(v)

    def test_random(self):
        r = redis.Redis(host='192.168.0.12', port=6379, decode_responses=True)
        for i in range(10000):
            key_to_write = str(random.randint(1, 1000))
            key_to_read = str(random.randint(1, 1000))
            r.setex(key_to_write,value=key_to_write, time=1000)
            v = r.get(key_to_read)
            if v:
                print(i, "hit :", key_to_read)
            else:
                print(i, "miss:", key_to_read)
