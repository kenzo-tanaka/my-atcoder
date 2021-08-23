N = input()


def check_sum(v):
    v = str(v)
    result = 0
    for i in list(v):
        i = int(i)
        result += i
    return result


divider = 10**(len(N) - 1)
r = int(N) % divider
value = int(N) - r - 1

print(max(check_sum(value), check_sum(N)))

# 普通の全探索したら間に合わないので何らかの条件でチェックする

# すべての桁が9だと大きくなる可能性が高い
# ただし100などのような場合は3桁全てを9にすることはできないので、2桁の範囲で考える必要がある

# 599 = 23
# 659 = 20
# 666 = 18

# 1の桁を9にする
# 660 - 1

# 6666 = 24
# 6659 = 26
# 6599 = 29
# 5999 = 32
