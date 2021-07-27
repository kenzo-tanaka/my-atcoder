a,b,c = map(int, input().split())

count = 0
while (a % 2 == 0) and (b % 2 == 0) and (c % 2 == 0):
    if (a == b) and (b == c):
        print(-1)
        exit()

    ah = a / 2
    bh = b / 2
    ch = c / 2

    a = bh + ch
    b = ah + ch
    c = ah + bh
    count += 1

print(count)
