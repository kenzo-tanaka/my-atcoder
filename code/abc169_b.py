n = int(input())
a = list(map(int, list(input().split())))

result = 1
v = 10 ** 18

for i in sorted(a):
    result *= i
    if (result > v):
        result = -1
        break

print(result)
