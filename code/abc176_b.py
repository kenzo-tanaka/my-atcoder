n = input()
l = len(n)

result = 0

for i in range(l):
  result += int(n[i])

if (result % 9 ==0):
  print('Yes')
else:
  print('No')
