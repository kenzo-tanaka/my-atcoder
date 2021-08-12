s = input()
count = 0
for i in range(len(s)):
    if i == 0:
        prev = s[i]
        next
    else:
        if s[i] == prev:
            if s[i] == '0':
                prev = '1'
            else:
                prev = '0'
            count += 1
        else:
            prev = s[i]
            next

print(count)
