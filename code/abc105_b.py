n = int(input())

# n = 1..100
# 最大で25

flag = False

for i in range(26):
    for j in range(26):
        if (4 * i) + (7 * j) == n:
            flag = True
            break

if flag:
    print('Yes')
else:
    print('No')    
