A, B, K = map(int, input().split())
l = list(range(A, B + 1))
r = list(reversed(l))

result = []

if len(l) < K:
    result = l
else:
    for i in range(K):
        result.append(l[i])

    for i in range(K):
        if (not r[i] in result):
            result.append(r[i])

    result.sort()

for i in result:
    print(i)
