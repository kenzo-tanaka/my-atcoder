a, b, c, k = map(int, input().split())

if k % 2 == 0:
    a, b = a + k * c, b + k * c
else:
    a, b = b + k * c, a + k * c

if abs(a - b) > 10**18:
    print('Unfair')
else:
    print(a - b)
