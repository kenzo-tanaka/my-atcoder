n = int(input())
x = list(map(int, input().split()))
mi = []
l = list(range(0, 101))

for i in l:
    tmp = 0
    p = i

    for j in range(n):
        tmp += (x[j] - p) * (x[j] - p)

    mi.append(tmp)

print(min(mi))
