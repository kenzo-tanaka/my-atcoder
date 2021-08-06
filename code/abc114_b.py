s = input()
mi = 1000

for i in range(len(s)):
    v = int(s[i:i + 3])
    gap = abs(753 - v)

    if gap < mi:
        mi = gap

print(mi)
