n,m,x = list(map(int, input().split()))
a = list(map(int, input().split()))

less = 0
greater = 0

for i in a:
  if i < x:
    less += 1
  else:
    greater += 1

print(min(less, greater))
