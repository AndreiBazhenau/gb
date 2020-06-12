from pymongo import MongoClient

client = MongoClient('localhost', 27017)
db = client['vacancy']
vac = db.vac

salary_search = 100000


for vac in vac.find({'min_salary': {'$gt': 100000}}, {'_id': 0, 'position': 1, 'min_salary': 1}):
    print(vac)

# for vac in vac.find({'salary': {'min': {'$gt': 100000}}}, {'_id': 0, 'position': 1, 'min': 1}):
#     print(vac)

# for el in vac.find({'min_salary': {'$gte': 100000}}):
#     print(el)
