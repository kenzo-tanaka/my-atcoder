h, w, n = list(map(int, input().split()))

# 4 5 2
# 3 2
# 2 5

X, Y = [], []
for i in range(n):
    x, y = map(int, input().split())
    X.append(x)
    Y.append(y)

# X: [3, 2] (Aだけの配列)
# Y: [2, 5] (Bだけの配列)

# 座標圧縮
# list(set(X))によって重複を除外している
Xdict = {x: i + 1 for i, x in enumerate(sorted(list(set(X))))}
Ydict = {y: i + 1 for i, y in enumerate(sorted(list(set(Y))))}

# 圧縮番号(造語): 圧縮したときに何番目になるか
# Xdict: {2: 1, 3: 2} (行: 圧縮番号)
# Ydict: {2: 1, 5: 2} (列: 圧縮番号)

for i in range(n):
    print(Xdict[X[i]], Ydict[Y[i]])
