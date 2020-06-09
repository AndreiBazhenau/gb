from bs4 import BeautifulSoup as bs
import requests
import pandas as pd

site = 'https://spb.hh.ru/search/vacancy?'
area = 'area=2'
search = 'data+scientist'  # data+scientist  python
headers = {'User-Agent': 'api-test-agent', 'Accept': '*/*'}

link = site + area + '&st=searchVacancy&text=' + search + '&fromSearch=true'

next_page = '#'
df = pd.DataFrame(columns=['Site', 'Vacancy', 'Salary', 'Company', 'Link'])
i = 1
try:
    while next_page:
        response = requests.get(link, headers=headers, timeout=5).text
        soup = bs(response, 'lxml')
        # print(soup.title.string)

        for tag in soup.find_all('div', {'class': 'vacancy-serp-item'}):
            # print(tag)
            vacancy = tag.find('a', {'class': 'bloko-link HH-LinkModifier'})
            # print(f"{i}: {vacancy.get_text()} : {vacancy['href']}")
            salary = tag.find('span', {'data-qa': 'vacancy-serp__vacancy-compensation'})
            if salary:
                # print(salary.get_text())
                salary = salary.get_text().replace(" ", "").replace(" ", "")
                # print(salary)
                if salary.startswith('от'):
                    salary = salary.replace("от", "")
                    salary_min = salary
            # else:
                #print("NA")

            company = tag.find('a', {'data-qa': 'vacancy-serp__vacancy-employer'})
            # print(company)

            df.loc[i] = ['hh.ru', vacancy.get_text(), salary, company.get_text(strip=True), vacancy['href']]
            i += 1
            salary = ''

        next_page_link = soup.find('a', {'class': 'bloko-button HH-Pager-Controls-Next HH-Pager-Control'})

        if next_page_link:
            next_page = next_page_link['href']
        else:
            next_page = ''
            # print('No more vacancies')
        link = 'https://spb.hh.ru' + next_page

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

print(df.to_string())
