n = int(input())
ds = list(map(int, list(input().split())))

result = 0

for i in range(n):
    base = ds[i]
    remain = ds[i+1:n]

    # Array loop
    for j in remain:
        result += base * j

print(result)