N = int(input())
T, A = map(int, input().split())
H = list(map(int, input().split()))

result = 0

for i in range(N):
    if i == 0:
        mi = abs(A - (T - H[i] * 0.006))
        result = i + 1
    else:
        if abs(A - (T - H[i] * 0.006)) < mi:
            mi = abs(A - (T - H[i] * 0.006))
            result = i + 1

print(result)
