command, s = list(input().split())


def isint(s):
    try:
        int(s, 10)
    except ValueError:
        return False
    else:
        return True


exp = ''
result = ''

for i in range(len(s)):
    if s[i] == '-':
        exp += s[i]
    elif isint(s[i]):
        exp += s[i]
    else:
        if exp == '':
            result += s[i]
        elif int(exp) > 0:
            result += s[i] * int(exp)
            exp = ''
        else:
            result += s[i]
            exp = ''

print(result)
