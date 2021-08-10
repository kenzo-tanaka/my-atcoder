n = int(input())
a = list(map(int, input().split()))

result = [0] * n

for i in range(len(a)):
    v = a[i]  # 2,3,1
    result[v - 1] = i + 1

print(*result)
