age = int(input("Enter your age:"))
if age<5:
    print("Too young for school")
elif (age==5):
    print("Go to Kindergaden")
elif (age>=6) and (age<=17):
    print("Go to grade {}".format(age-5))
else:
    print("Go to College")