n,s,t = map(int, input().split())

w = 0
count = 0

for i in range(n):
    w += int(input())
    count += s <= w <= t

print(count)
