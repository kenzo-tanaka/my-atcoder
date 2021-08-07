s = input()
chars = ''
result = 'yes'

for i in range(len(s)):
    for j in range(len(chars)):
        if s[i] == chars[j]:
            result = 'no'
            break

    chars += s[i]

print(result)
