h, w = list(map(int, list(input().split()))) # < 500
array = [input() for i in range(h)]

s_i = [0,0]
g_i = [0,0]

reached = [[0] * h] * w

# Setup start and goal position
for i in range(h):
    for j in range(w):
        if array[i][j] == 's':
            s_i = [i, j]
        elif array[i][j] == 'g':
            g_i = [i, j]


def search(x, y):
    if (x < 0 or w <= x or y < 0 or h <= y or array[x][y] == '#'):
        return
    elif (reached[x][y]):
        return
    else:
        reached[x][y] = True

    search(x + 1, y)
    search(x - 1, y)
    search(x, y + 1)
    search(x, y - 1)

search(s_i[0], g_i[0])
print(reached)

# スタート地点から右側への探索を開始
# つまり [0, 1], [0,2], [0,3]へと移動していく
# wを超えてしまったときはエラーになるので端まで行ったら一旦戻る




