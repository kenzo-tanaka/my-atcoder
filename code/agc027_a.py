n, x = list(map(int, input().split()))
a = list(map(int, input().split()))

a.sort()

count = 0
for i in range(len(a)):
    if a[i] <= x:
        x -= a[i]
        count += 1
    else:
        break

    if (i == len(a) - 1) and (x > 0):
        count -= 1

print(count)
