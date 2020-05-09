a = 2
b = 3
c = 1
print(f"1-й день: {a:.0f}")
while a < b:
    a *= 1.1
    c += 1
    print(f"{c}-й день: {a:.2f}")