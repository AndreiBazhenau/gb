from pymongo import MongoClient
import pprint

client = MongoClient('localhost', 27017)
db = client['vacancy']
vac = db.vac

#salary_search = int(input('Please type low salary limit (integer): '))
salary_search = 100000

# pprint.pprint(vac.find_one())
# i = 1
# for vac in vac.find({"city": "Spb"}):
#     print(i)
#     pprint.pprint(vac)
#     i += 1


#pprint.pprint(vac.find( {'city': "Msk"},  {'city': 1}))
# for vac in vac.find({'city': "Msk"},  {'_id': 0, 'city': 1, 'position': 1}):
#     print(vac)

for vac in vac.find({'min_salary': {'$gt': '150000'}}, {'position': 1, 'min_salary': 1}):
    print(vac)

# vac.delete_one({})
