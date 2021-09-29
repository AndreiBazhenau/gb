# Create a random list filled with the characters H and T for heads and tails.
# Output the number of Hs and Ts
# Example Output
# Heads : 46
# Tails : 54

import random
flip_list = []

for i in range(1, 101):
    flip_list.append(random.choice("H" "T"))
#   flip_list += random.choice(['H', 'T'])
print("Heads:", flip_list.count("H"))
print("Tails:", flip_list.count("T"))
