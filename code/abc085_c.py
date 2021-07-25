n,y = map(int, input().split())

for i in range(n+1):
    a = i

    for j in range(n-a + 1):
        b = j
        c = n - (i+j)

        if ((10000*a + 5000*b + 1000*c) == y):
            print(a, b, c)
            exit()

print(-1, -1, -1)            
