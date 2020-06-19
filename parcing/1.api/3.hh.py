import requests
import json

main_link = 'https://api.hh.ru/'
method = 'vacancies'
text = 'text=python'
area = 'area=2'  # Saint-Petersburg
# справочник регионов: curl -k -H 'User-Agent':'api-test-agent' https://api.hh.ru/areas
metro = 'metro=15.217'  # Невский проспект
# справочник станций метро curl -k -H 'User-Agent':'api-test-agent' https://api.hh.ru/metro/2
# headers = {'User-Agent': 'Chrome/83.0.4103.61','Accept': '*/*'}
headers = {'User-Agent': 'api-test-agent', 'Accept': '*/*'}
try:
    response = requests.get(main_link + method + '?' + text + '&' + area + '&' + metro,
                            headers=headers, timeout=5)
    data = response.json()
    print(data)
    print(data['items'])
    # for position in data:
    #     print(position['name'])
        # repos_list.append(repo['html_url'])
    # try:
    #     with open(f"hh_{method}.json.txt", "w", encoding="utf-8") as file_obj:
    #         json.dump(data, file_obj)
    #         file_obj.write('\n')
    # except IOError:
    #     print("IO Error")

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
