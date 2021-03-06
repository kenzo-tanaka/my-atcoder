import math

N, M = map(int, input().split())
A = list(map(int, input().split()))
array = []
# 全ての1<i<Nのiについて、gcd(Ai, k)=1

for i in range(1, M + 1):
    flag = False
    for j in A:
        if math.gcd(i, j) == 1:
            flag = True
            next
        else:
            flag = False
            break
    if flag:
        array.append(i)

print(len(array))
for i in array:
    print(i)

# Aに偶数があれば偶数は結果に入らない
# 6のように3の倍数があれば結果に3の倍数は入らない
# 5があれば結果に5の倍数は入らない

# 1 5 6
# 2 3 4 5 6 8 9 10 12
