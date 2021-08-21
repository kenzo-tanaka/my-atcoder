command, s = list(input().split())


def isint(s):
    try:
        int(s, 10)
    except ValueError:
        return False
    else:
        return True


if command == 'compress':
    sq = False
    tmp = s[0]
    result = ''
    for i in range(1, len(s)):
        if tmp[-1] == s[i]:
            if sq:
                tmp += s[i]
            else:
                # 前回までの文字の処理
                if len(tmp) >= 2:
                    st = tmp[0:len(tmp) - 1]
                    result += str(-len(st)) + st

                tmp = s[i] * 2
                sq = True
        else:
            if sq:
                result += str(len(tmp)) + tmp[-1]
                tmp = s[i]
                sq = False
            else:
                tmp += s[i]

        # Last check
        if i == len(s) - 1:
            if sq:
                result += str(len(tmp)) + tmp[-1]
            else:
                result += str(-len(tmp)) + tmp
else:
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

# compress AaAaAAAAa
