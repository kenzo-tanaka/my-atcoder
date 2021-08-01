n = int(input())

count = 0
flag = False

for i in range(n):
  d1, d2 = list(map(int, input().split()))

  if d1 == d2:
    count += 1
  else:
    count = 0

  if count >= 3:
    flag = True

if flag:
  print('Yes')
else:
  print('No')