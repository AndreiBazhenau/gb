earnings = int(input("Please enter the earnings: "))
expenses = int(input("Please enter the expenses: "))
if earnings > expenses:
    print("You company is profitable", f"Your profit margin is: {earnings / expenses}")
    employee_number = int(input("Please enter the number of employees: "))
    print(f"Profit per one employee is: {earnings / employee_number}")
else:
    print("Your company is not profitable")