a, b = list(map(int, input().split()))
s = input()

hyphen_position = a

result = 'Yes'

for i in range(len(s)):
    if i != hyphen_position:
        if s[i] != '-':
            next
        else:
            result = 'No'
            break
    else:
        if s[i] == '-':
            next
        else:
            result = 'No'
            break

print(result)
