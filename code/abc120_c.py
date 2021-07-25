s = list(map(int, list(input())))
n = len(s)
pre = [0,0]
count = 0

for i in range(n):
    if i == 0:
        pre = [i, s[i]]
    else:
        if s[i] == pre[1]:
            pre[0] = i
        else:
            pre[0] -= 1
            count += 1

print(count*2)

