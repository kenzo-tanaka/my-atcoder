n,k = map(int, input().split())
hs = list(map(int, list(input().split())))

result = 0

for h in hs:
    if h >= k:
        result += 1

print(result)