s = list(input())
result = []

for i in range(len(s)):
    if (s[i] == '0' or s[i] == '1'):
        result.append(s[i])
    elif(i != 0 and s[i] == 'B' and result != []):
        result.pop()

print(*result, sep='')
