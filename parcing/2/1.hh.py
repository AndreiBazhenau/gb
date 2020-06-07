from bs4 import BeautifulSoup as bs
import requests
from pprint import pprint

# https://spb.hh.ru/search/vacancy?area=1&st=searchVacancy&text=data+scientist&fromSearch=true
link = 'https://spb.hh.ru/search/vacancy?'
headers = {'User-Agent': 'api-test-agent', 'Accept': '*/*'}
area = 'area=2'
text = 'text=data+scientist'

try:
    response = requests.get(link + area + '&st=searchVacancy&' + text + '&fromSearch=true', headers=headers, timeout=5)

    soup = bs(response.text, 'lxml')

    #elem = soup.find_all(attrs={'class': 'bloko-link HH-LinkModifier'})
    elem = soup.find_all('a',{'class': 'bloko-link HH-LinkModifier'})
    pprint(elem)

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
