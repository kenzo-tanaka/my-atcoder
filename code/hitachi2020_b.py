a, b, m = list(map(int, input().split()))

# 冷蔵庫とレンジの金額配列
a = list(map(int, input().split()))
b = list(map(int, input().split()))
mi = min(a) + min(b)

# m種類
for i in range(m):
    tmp = list(map(int, input().split()))
    x_idx = tmp[0] - 1
    y_idx = tmp[1] - 1
    c = tmp[2]
    v = (a[x_idx] + b[y_idx]) - c

    if v < mi:
        mi = v

print(mi)
