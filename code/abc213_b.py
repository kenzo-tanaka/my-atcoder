n = int(input())
a = list(map(int, input().split()))

tmp = sorted(a, reverse=True)
print(a.index(tmp[1]) + 1)
