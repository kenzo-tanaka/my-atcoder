N = int(input())
a = list(map(int, input().split()))

count = 1
result = 0

for i in range(N):
    if a[i] == count:
        count += 1
        next
    else:
        result += 1

if result == N:
    print(-1)
else:
    print(result)
