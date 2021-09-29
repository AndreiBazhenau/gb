# Create customer array outside the for so it isn't local to the while loop

customers = []
while True:
    # Cut off the 1st letter to cover if the user types a n or y
    create_entry = input("Enter Customer (Yes/No): ")
    create_entry = create_entry[0].lower()
    if create_entry == "n":
        # leave the while loop when n is entered
        break
    else:
        # get th customer name by splitting at the space
        f_name, l_name = input("Enter Customer Name :").split()

        # add the dictionary to the array
        customers.append({"f_name":f_name,"l_name":l_name})
# print the customer list
for cust in customers:
    print(cust['f_name'], cust['l_name'])