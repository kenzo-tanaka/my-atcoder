x, y = list(map(int, list(input().split())))
k = int(input())

# ちょうどk枚選んで全てひっくり返す
# 表向きのコインは最大何枚になるか

result = 0

if (k <= y):
    # k枚を表にする
    result = x + k
else:
    # yは全て表にする
    result += y
    result += x - (k - y)

print(result)

