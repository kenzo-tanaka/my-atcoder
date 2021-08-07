x = 0
mx = 0
n = int(input())
s = input()

for i in range(n):
    if s[i] == 'I':
        x += 1
    elif s[i] == 'D':
        x -= 1

    if x > mx:
        mx = x

print(mx)
