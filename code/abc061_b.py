N, M = map(int, input().split())
dic = {i: [] for i in range(N)}

for i in range(M):
    a, b = map(int, input().split())
    a -= 1
    b -= 1

    dic[a].append(b)
    dic[b].append(a)

for i in dic.values():
    print(len(i))
