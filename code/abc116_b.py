s = int(input())

arr = []
arr.append(s)

now = s

while True:
    if (now % 2 == 0):
        now //= 2
    else:
        now = 3 * now + 1

    arr.append(now)
    if arr.count(now) == 2:
        break

print(len(arr))
