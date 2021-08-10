n = int(input())
v = list(map(int, input().split()))

v.sort()
result = 0

for i in range(len(v)):
    if i == 0:
        result = v[i]
    else:
        result = (v[i] + result) / 2

print(result)
