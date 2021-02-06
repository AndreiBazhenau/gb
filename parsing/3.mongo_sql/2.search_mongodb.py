from pymongo import MongoClient

client = MongoClient('localhost', 27017)
db = client['vacancy']
vac = db.vac

salary_lim = 150000

i = 1
for vac in vac.find({'min_salary': {'$gt': salary_lim} or {'max_salary': {'$gt': salary_lim}}},
                    {'_id': 0, 'position': 1, 'min_salary': 1}):
    print(i, vac)
    i += 1
