n = int(input())
d, x = list(map(int, input().split()))
counter = 0

for i in range(n):
    a = int(input())

    # 1日目分を処理
    counter += 1

    day = 1
    while day * a + 1 <= d:
        counter += 1
        day += 1

print(counter + x)
