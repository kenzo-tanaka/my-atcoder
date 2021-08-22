import math

N, M = map(int, input().split())
A = list(map(int, input().split()))
array = []

for i in A:
    array.append(i)

    if i % 2 == 0:
        tmp = 1
        while tmp * 2 <= M:
            array.append(tmp * 2)
            tmp += 1

    if i % 3 == 0:
        t = 1
        while t * 3 <= M:
            array.append(t * 3)
            t += 1

    if i % 5 == 0:
        tmp = 1
        while tmp * 5 <= M:
            array.append(tmp * 5)
            tmp += 1

list = list(set(list(range(1, M + 1))) - set(array))
print(list)
