import copy

N = int(input())
T = list(map(int, input().split()))
M = int(input())

for i in range(M):
    P, X = map(int, input().split())
    P -= 1

    t = copy.copy(T)
    t[P] = X

    print(sum(t))
