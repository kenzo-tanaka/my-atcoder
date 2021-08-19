import itertools

X = int(input())
list = list(range(100, 106))

result = 0

for i in range(6):
    i += 1
    for pair in itertools.combinations(list, i):
        if X % sum(pair) == 0:
            result = 1
            break
    if result == 1:
        break

print(result)
