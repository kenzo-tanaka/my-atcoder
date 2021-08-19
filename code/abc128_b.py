N = int(input())

list = []

for i in range(N):
    S, P = input().split()
    P = int(P)

    list.append([S, P, i + 1])

sortfirst = lambda val: val[0]
sortsecond = lambda val: val[1]

tmp = sorted(list, key=sortsecond, reverse=True)

for i in sorted(tmp, key=sortfirst):
    print(i[2])
