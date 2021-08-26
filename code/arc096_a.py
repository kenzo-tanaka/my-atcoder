A, B, C, X, Y = map(int, input().split())

# @see: https://youtu.be/qOG8pkCP7oI?t=1809
# Cを2枚買う枚数をK枚と固定してループを回して最小値を求める

l = 10**5
arr = []

for k in range(l + 1):
    price = 2 * C * k + max(X - k, 0) * A + max(Y - k, 0) * B
    arr.append(price)

print(min(arr))
