n = int(input())
mx = 0
result = 0

for i in range(n):
  i += 1
  tmp = i
  count = 1

  while True:
    if (tmp % 2 != 0):
      break
    else:
      tmp /= 2
      count += 1

  if (count > mx):
    mx = count
    result = i

print(result)

