n = int(input())
p = list(map(int, input().split()))
count = 0

for i in range(n):
    pi = p[i]
    if i == 0:
        mi = pi
        count += 1
    else:
        if mi > pi:
            mi = pi
            count += 1

print(count)
