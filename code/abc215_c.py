import itertools

S, K = input().split()
K = int(K)
array = [''.join(p) for p in itertools.permutations(S)]

list = sorted(list(set(array)))
print(list[K - 1])
