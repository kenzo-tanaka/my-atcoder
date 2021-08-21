l, r = map(int, input().split())
m = int(input())
n = list(map(int, input().split()))

# レベルがnの倍数であると倒せる
# m個の整数だけしか設定できない

# 最小何体まで減らせるか

# 1 10
# 2
# 3 7

if 1 in n:
    print(0)  # 1を含む場合全て倒すことができる
else:
    list = list(range(l, r + 1))
    result = len(list)

    for i in n:
        if i == 1:
            break
        for j in list:
            if j % i == 0:
                list.remove(j)
                result = len(list)

    print(result)
