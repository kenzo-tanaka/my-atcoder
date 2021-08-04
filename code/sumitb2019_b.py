n = int(input())

result = 0

import math

for i in range(50000):
  price = math.floor(i * 108 / 100)
  if price == n:
    result = i

if result == 0:
  print(':(')
else:
  print(result)
