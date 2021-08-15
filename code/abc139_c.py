N = int(input())
H = list(map(int, input().split()))

current = 0
count = 0
mx = 0

for i in range(N):
    if i == 0: current = H[i]
    else:
        if H[i] <= current:
            current = H[i]
            count += 1

            mx = max(count, mx)
        else:
            current = H[i]
            count = 0

print(mx)
