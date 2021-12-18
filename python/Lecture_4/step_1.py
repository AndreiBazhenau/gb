import random

# range(5) -> 0, 1, 2, 3...

# print(random.randint(3, 19))  # 3...19  [3, 19]
# print(random.randrange(3, 19))  # 3...18  [3, 19)
#
# print(random.randrange(3))  # [0, 3)
# print(random.randrange(0, 3))  # [0, 3)
# print(random.randrange(0, 15, 3))  # [0, 3, 6, 9, 12, 15)

print(random.random())  # [0, 1)
# [25...80) ?
lower_range, upper_range = 25, 80
random_age = lower_range + random.random() * (upper_range - lower_range)
# random.random() = 0, 0.15, 0.47, 0.78, 0.99
print(random_age)

7 min -> 20:13