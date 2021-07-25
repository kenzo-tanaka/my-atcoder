o = input() # 奇数
e = input() # 偶数

l = len(o) + len(e)
password = ''
oi, ei = 0, 0

for i in range(l):
    p = i + 1

    if (p % 2 == 0):
        password += e[ei]
        ei += 1
    else:
        password += o[oi]
        oi += 1


print(password)
