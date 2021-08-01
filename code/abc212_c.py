n,m = map(int, input().split())
a = sorted(list(map(int, input().split())))
b = sorted(list(map(int, input().split())))

mi = 1000000007
i = 0
j = 0

while True:
  if a[i] == b[j]:
    mi = 0
    break
  elif a[i] < b[j]:
    mi = min(mi, abs(b[j] - a[i]))
    i += 1
    mi = min(mi, abs(b[j] - a[i]))
  elif a[i] > b[j]:
    mi = min(mi, abs(a[i] - b[j]))
    j += 1
    mi = min(mi, abs(a[i] - b[j]))

  if i == n - 1 or j == m - 1:
    break

print(mi)