n = int(input())
d = list(map(int, input().split()))
sd = sorted(d)
half = n // 2

mi = sd[half - 1]  # 4
mx = sd[half]  # 6

print(len(list(range(mi + 1, mx + 1))))
