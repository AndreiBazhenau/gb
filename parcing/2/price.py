s = 'до160000руб.'
s2 = '130000-200000руб.'
s2 = 'от75000руб.'
l = len(s)
result = ''
i = 0
while i < l:
    s_int = ''
    a = s[i]
    while '0' <= a <= '9':
        s_int += a
        i += 1
        if i < l:
            a = s[i]
        else:
            break
    i += 1
    if s_int != '':
        result = result + str(s_int)

print(result)