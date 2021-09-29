# a - z 97 -122
# A - Z 65 - 90

norm_string = input("Enter a string to hide in uppercase: ")
secret_string = ""
# Cycle through each character in the string
for char in norm_string:
# Store each character code in a new string
# += is the same as secret_string = secret_string + whatever
   secret_string += str(ord(char))
print("Secret Message :", secret_string)
norm_string = ""
# Cycle through each character code 2 at a time by incrementing by
# 2 each time through since unicodes go from 65 to 90
for i in range(0, len(secret_string)-1, 2):
# Get the 1st and 2nd for the 2 digit number
   char_code = secret_string[i] + secret_string[i+1]
# Convert the codes into characters and add them to the new string
   norm_string += chr(int(char_code))
print("Original Message :", norm_string)
