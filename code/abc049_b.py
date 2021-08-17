H, W = list(map(int, input().split()))

C = []

for i in range(H):
    c = input()
    C.append(c)

for i in C:
    for j in range(2):
        print(i)
