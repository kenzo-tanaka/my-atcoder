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
