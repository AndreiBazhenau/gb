# 1. Посмотреть документацию к API GitHub, разобраться как вывести список
# репозиториев для конкретного пользователя, сохранить JSON-вывод в файле *.json.

import requests
import json

main_link = 'https://api.github.com/users/'
user = 'alex-kalinichenko'
info = 'repos'
headers = {'User-Agent': 'Chrome/83.0.4103.61',
           'Accept': '*/*'}
try:
    response = requests.get(main_link + user + '/' + info, headers=headers, timeout=5)
    data = response.json()
    repos_list = []
    for repo in data:
        print(repo['html_url'])
        repos_list.append(repo['html_url'])

except requests.exceptions.ConnectTimeout:
    print('Connection timeout')
except requests.exceptions.ReadTimeout:
    print('Read timeout')
except requests.exceptions.HTTPError as e:
    print('Http error: %s' % e)


try:
    with open(f"github_repos_{user}.json.txt", "w", encoding="utf-8") as file_obj:
        for _ in repos_list:
            json.dump(_, file_obj)
            file_obj.write('\n')
except IOError:
    print("Ошибка")
