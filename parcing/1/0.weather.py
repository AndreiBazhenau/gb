# from pprint import pprint
import requests
# bba743470ede48795fce797a3dd2d5ae
# https://samples.openweathermap.org/data/2.5/weather?q=London&appid=439d4b804bc8187953eb36d2a8c26a02

main_link = 'https://api.openweathermap.org/data/2.5/weather'
city = 'Saint Petersburg'
params = {'q': city,
          'appid': 'bba743470ede48795fce797a3dd2d5ae'}

headers = {'User-Agent': 'Chrome/83.0.4103.61',
           'Accept': '*/*'}
try:
    response = requests.get(main_link, params=params, headers=headers, timeout=5)
    data = response.json()

    print('Response: ', response)
    print('Data json format: ', data)
    print('Response headers: ', response.headers)
    print('Status code: ', response.text)
    print('Url: ', response.url)
    print(f'В городе {data["name"]} температура {round(data["main"]["temp"] - 273.15)} градусов')

except requests.exceptions.ConnectTimeout:
    print('Connection timeout')
except requests.exceptions.ReadTimeout:
    print('Read timeout')
except requests.exceptions.HTTPError as e:
    print('Http error: %s' % e)

