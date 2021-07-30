n,k = list(map(int, list(input().split())))
ts = [int(input()) for i in range(n)]

flag = False

for i in range(len(ts)):
    if (i == 0) or (i == 1):
        next
    else:
        day = i + 1
        if (ts[i-2] + ts[i-1] + ts[i]) < k:
            flag = True
            print(day)
            break

if flag == False:
    print(-1)

