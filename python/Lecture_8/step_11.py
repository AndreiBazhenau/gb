import requests

resp = requests.get('https://github.com/requests')
print(resp)
print(type(resp))

resp = requests.put('https://github.com/requests/put')
print(resp)
resp = requests.delete('https://github.com/requests/delete')
print(resp)
resp = requests.head('https://github.com/requests/get')
print(resp)
resp = requests.options('https://github.com/requests/get')
print(resp)
