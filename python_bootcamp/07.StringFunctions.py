samp_string = "  This is a very important string  "
samp_string = samp_string.strip()
print("Uppercase:", samp_string.upper())
print("Lowercase:", samp_string.lower())
print("Words")
list = samp_string.split()
for i in list:
    print(i)
print("How many is:", samp_string.count("is"))
print("String index:", samp_string.find("string"))
print("Replace very:", samp_string.replace("very","kind of"))
letter_z="z"
print("Is z a letter or number:", letter_z.isalnum())
print("Is z a letter:", letter_z.isalpha())
print("Is z a number:", letter_z.isdigit())
print("Is z a space:", letter_z.isspace())