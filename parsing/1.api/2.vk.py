# 2. Изучить список открытых API. Найти среди них любое, требующее авторизацию (любого типа).
# Выполнить запросы к нему, пройдя авторизацию. Ответ сервера записать в файл.

import requests
import json

main_link = 'https://api.vk.com/method/'
method = 'friends.getOnline'
user = '210700286'
proto_ver = 'v=5.52'
# insert your token below
token = '!!! insert your token !!!'
headers = {'User-Agent': 'Chrome/83.0.4103.61',
           'Accept': '*/*'}
try:
    response = requests.get(main_link + method + '?' + proto_ver + '&' + 'access_token=' + token,
                            headers=headers, timeout=5)
    data = response.json()
    print(data)
    try:
        with open(f"vk_{method}.json.txt", "w", encoding="utf-8") as file_obj:
            json.dump(data, file_obj)
            file_obj.write('\n')
    except IOError:
        print("IO Error")

except requests.exceptions.ConnectTimeout:
    print('Connection timeout')
except requests.exceptions.ReadTimeout:
    print('Read timeout')
except requests.exceptions.HTTPError as e:
    print('Http error: %s' % e)
except requests.exceptions.ConnectionError:
    print('Connection error')
except requests.exceptions.RequestException:
    print('General Error')
