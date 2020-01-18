import math
import sys
from os import rename

import requests

print(sys.version)
print(sys.executable)


def greet(who_to_greet):
    greetings = "Hello, {}".format(who_to_greet)
    return greetings


# print(greet('world'))
# print(greet('Prakash'))

r = requests.get("https://coreyms.com")
print(r.status_code)
