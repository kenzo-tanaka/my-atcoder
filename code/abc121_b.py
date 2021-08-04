n,m,c = list(map(int, input().split()))
b = list(map(int, input().split()))

result = 0

for i in range(n):
  a = list(map(int, input().split()))
  v = 0
  for j in range(m):
    v += a[j] * b[j]
  
  if (v+c) > 0:
    result += 1

print(result)
