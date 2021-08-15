H, W = map(int, input().split())

print("#" * (W + 2))

for i in range(H):
    A = input()
    print("#" + A + "#")

print("#" * (W + 2))
