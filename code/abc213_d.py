n = int(input())

ks = list(range(n + 1))
vs = [[]] * (n + 1)
visitable = dict(zip(ks, vs))

for i in range(n - 1):
    a, b = list(map(int, input().split()))
    visitable[a].append(b)
    visitable[b].append(a)

print(visitable)
