n = int(input())

x = n**(1/2)
while (x - int(x)) != 0:
    n -= 1
    x = n**(1/2)

print(n)