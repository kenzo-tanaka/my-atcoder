import sys


def isint(s):
    try:
        int(s, 10)
    except ValueError:
        return False
    else:
        return True


def issdbn(value):
    if (len(value)) != 10:
        return 'false'
    else:
        total = 0
        for idx in range(len(value)):
            tmp = idx + 1
            if value[idx] == 'X':
                total += tmp * 10
            elif (isint(value[idx])):
                total += tmp * int(value[idx])

        if total % 11 == 0:
            return 'true'
        else:
            return 'false'


codes = []

for l in sys.stdin:
    codes.append(l.strip())

for code in codes:
    print(issdbn(code))
