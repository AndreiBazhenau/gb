money = input("How much you would like to invest?")
interest = input("What is the interest (in %) ?")
money = float(money)
interest = float(interest) / 100
for i in range(10):
 money = money + money * interest
print("Your earnings will be: {:.2f}", format(money))