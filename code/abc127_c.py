n, m = list(map(int, input().split()))

# 最小, 最大
ids = []
for i in range(m):
    l, r = map(int, input().split())
    if ids == []:
        ids = [l, r]
    else:
        ids = [max(ids[0], l), min(ids[1], r)]

print(len(list(range(ids[0], ids[1] + 1))))
