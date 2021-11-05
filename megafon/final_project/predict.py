import pickle
import numpy as np
import pandas as pd
import xgboost as xgb


with open('model.pkl', 'rb') as file:
    model = pickle.load(file)

test = pd.read_csv('data_test.csv')

# как указано в методичке, записываем вероятности подключения услуги
test_pred = model.predict_proba(test.drop(['Unnamed: 0', 'buy_time'], axis=1))[:,1]

submit = pd.concat([test['id'],
                    test['buy_time'],
                    test['vas_id'],
                    pd.Series(test_pred).rename('target')
                   ],
                   axis=1
                  )

submit.to_csv('answers_test.csv', index=False)

print('Successfully predicted and saved!')
