# a - z: 97 -122
# A - Z: 65 - 90
message = input("Enter your message:")
key = int(input("How many characters should be shift (1-26)?"))
secret_message = ""
for char in message:  # cycle through each character in the message
    if char.isalpha():    # if it isn't a letter then keep it as it is in the else below
        char_code = ord(char)  # get the character code
        char_code += key       # add the shift amount
        if char.isupper():     # if uppercase then compare to uppercase unicodes
            if char_code > ord('Z'):  # if bigger than Z subtract 26
                char_code -= 26
            elif char_code < ord('A'): # if smaller then A add 26
                char_code += 26
        else:
            if char_code > ord('z'): # do the same for lowercase characters
                char_code -= 26
            elif char_code < ord('a'):
                char_code += 26
        secret_message +=chr(char_code)  # convert from code to letter and add to message
    else:
        secret_message += char  # if not a letter leave the character as is
print("Encrypted:", secret_message)

# to decrypt the only thing that changes is the sign of the key
key = - key

orig_message = ""

for char in secret_message:
    if char.isalpha():
        char_code = ord(char)
        char_code += key
        if char.isupper():
            if char_code > ord('Z'):
                char_code -= 26
            elif char_code < ord('A'):
                char_code += 26
        else:
            if char_code > ord('z'):
                char_code -= 26
            elif char_code < ord('a'):
                char_code += 26
        orig_message +=chr(char_code)
    else:
        orig_message += char
print("Decrypted:", orig_message)