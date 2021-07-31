n, x = map(int, input().split()) # n+1回跳ねる
l = list(map(int, input().split()))

l.insert(0,0)
d = 0
count = 0

for i in l:
    d += i

    if d <= x:
        count += 1

print(count)
