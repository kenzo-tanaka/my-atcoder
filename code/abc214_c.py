n = int(input())
S = list(map(int, input().split()))
T = list(map(int, input().split()))
current = 0
array = []
last = n - 1

for i in range(n):
    if i == 0:
        current = T[0]
    else:
        current = min(current + S[i - 1], T[i])

    array.append(current)

    if i == last:
        if current + S[i] < array[0]:
            array[0] = current + S[i]

for i in range(n):
    if i == 0:
        print(array[0])
    else:
        value = min(array[i - 1] + S[i - 1], array[i])
        array[i] = value
        print(value)
