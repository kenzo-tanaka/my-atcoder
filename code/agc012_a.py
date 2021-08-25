N = int(input())
a = list(map(int, input().split()))

a.sort(reverse=True)
result = 0

for i in range(N):
    i += 1
    idx = i * 2 - 1
    result += a[idx]

print(result)
