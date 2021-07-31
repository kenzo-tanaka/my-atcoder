n = int(input())

# ai以上bi以下の整数を全て1つずつ(bi - ai + 1)個の整数を書く
result = 0

# 1..xまでの全ての整数の和: x * (x+1) // 2 

for i in range(n):
    a, b = map(int, input().split())
    result += b  * (b + 1) // 2 - a * (a - 1)  // 2

print(result)
