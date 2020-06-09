from bs4 import BeautifulSoup as bs
import requests
import pandas as pd
import os

def get_salary(s):
    def get_currency(s):
        s_len = len(s)
        cur = ''
        i = 0
        while i < s_len:
            a = s[i]
            if '0' <= a <= '9':
                i += 1
            else:
                cur = cur + a
                i += 1
        return cur

    if s.startswith('от'):
        s = s.replace('от', '')
        cur = get_currency(s)
        s_min = s.replace(cur, '')
        s_max = 'NA'
    elif s.startswith('до'):
        s = s.replace('до', '')
        cur = get_currency(s)
        s_max = s.replace(cur, '')
        s_min = 'NA'
    elif s.find('-') >= 5:
        pos = s.find('-')
        s_min = s[:pos]
        s_max = s[pos + 1:]
        cur = get_currency(s_max)
        s_max = s_max.replace(cur, '')
    else:
        s_min = 'NA'
        s_max = 'NA'
        cur = 'NA'

    return s_min, s_max, cur


site = 'https://spb.hh.ru/search/vacancy?'
area = 'area=2'
search = 'python'  # data+scientist  python
headers = {'User-Agent': 'api-test-agent', 'Accept': '*/*'}

link = site + area + '&st=searchVacancy&text=' + search + '&fromSearch=true'

next_page = '#'
df = pd.DataFrame(columns=['Site', 'Vacancy', 'Min salary', 'Max Salary', 'Currency', 'Company', 'Link'])
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
                s_min, s_max, cur = get_salary(salary)
                # print(s_min, s_max, cur)
            else:
                s_min, s_max, cur = 'NA', 'NA', 'NA'

                # print(salary)
            #     if salary.startswith('от'):
            #         salary = salary.replace("от", "")
            #         salary_min = salary
            # # else:
            #     #print("NA")

            company = tag.find('a', {'data-qa': 'vacancy-serp__vacancy-employer'})
            if not company:
                company = tag.find('div', {'class': 'vacancy-serp-item__meta-info'})
            # print(company)

            df.loc[i] = ['hh.ru', vacancy.get_text(), s_min, s_max, cur, company.get_text(strip=True), vacancy['href']]
            print(i, vacancy.get_text(), s_min, s_max, cur, company.get_text(strip=True), vacancy['href'])
            i += 1
            salary = ''

        next_page_link = soup.find('a', {'class': 'bloko-button HH-Pager-Controls-Next HH-Pager-Control'})

        if next_page_link:
            next_page = next_page_link['href']
            # print(next_page_link['href'])
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
desktop_link = os.path.join(os.path.join(os.environ['userprofile']), 'Desktop')
df.to_csv(f'{desktop_link}\hh_{search}.csv', index=False, encoding='utf-8')
