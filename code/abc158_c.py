import math

A, B = map(int, input().split())
result = -1
for i in range(13, 1251):
    if math.floor(i * 0.08) == A and math.floor(i * 0.1) == B:
        result = i
        break

print(result)
