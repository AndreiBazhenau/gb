#                 key : value
derek_dict = {"f_name": "Derek",
              "l_name": "Banas",
             "address": "123 Main St"}

print("First name :", derek_dict["f_name"])  # Get a value with the key
derek_dict["address"] = "215 North St"       # Change a value with the key
print("Address :", derek_dict["address"])
derek_dict["city"] = "Pittsburgh"            # Add a new key value
print("Is there a city :", "city" in derek_dict)  # Check if a key exists
del derek_dict["f_name"]            # Delete a key value
for k, v in derek_dict.items():    # Get the key and value with items()
    print(k, v)
print()
print("List of values:", derek_dict.values())
print("List of keys:", derek_dict.keys())
print()
print(derek_dict.get("m_name", "Not Here")) # Get gets a value associated with a key or the default
print()

for i in derek_dict:      # Loop through the dictionary keys
    print(i)