# 円環の問題
k, n = list(map(int, input().split()))
a = list(map(int, input().split()))
gaps = []

for i in range(len(a)):
    if i == n - 1:
        gap = (k - a[i]) + a[0]
    else:
        gap = a[i + 1] - a[i]

    gaps.append(gap)

l = max(gaps)
print(k - l)
