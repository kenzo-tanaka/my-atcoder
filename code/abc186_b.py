h,w = list(map(int, input().split()))
a = []

mi = 101
result = 0

for i in range(h):
  arr = list(map(int, input().split()))
  a.append(arr)

  if min(arr) < mi:
    mi = min(arr)


for i in a:
  for j in i:
    result += j - mi

print(result)
