import requests

data = {'key1': 'value1'}
resp = requests.get("https://github.com/requests/get", params=data)
print(resp)
# API
