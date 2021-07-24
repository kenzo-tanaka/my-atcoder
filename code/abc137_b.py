k, x = map(int, input().split())

min = x - (k - 1)
max = x + k

print(*list(range(min, max)))
# print(*[x for x in range(min, max)])
