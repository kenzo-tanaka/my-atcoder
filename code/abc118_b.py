n, m = map(int, input().split())

result = []

for i in range(n):
    v = list(map(int, input().split()))
    k = v[0]
    a = v[1:k + 1]

    if result == []:
        result = a
    else:
        tmp = []
        for j in result:
            for k in a:
                if j == k:
                    tmp.append(k)
        result = tmp

print(len(result))
