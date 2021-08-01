n,m = map(int, input().split())
a = sorted(list(map(int, input().split())))
b = sorted(list(map(int, input().split())))
 
min = 10 ** 9
 
for i in range(n):
  for j in range(m):
    v = abs(a[i] - b[j])
    if v < min:
      min = v
 
print(min)