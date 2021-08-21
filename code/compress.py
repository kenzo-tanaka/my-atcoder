command, s = list(input().split())
count = 1

result = ''

if command == 'compress':

    for i in range(len(s)):
        pre = s[i]

        if i == 0:
            next
        else:
            if s[i] == pre:
                count += 1
            else:
                if result == '':
                    result += pre + s[i]
                else:
                    result += s[i]
                pre = s[i]
