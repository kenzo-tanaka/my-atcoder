n = int(input())
xy = []

for i in range(n):
  xy.append(list(map(int, input().split())))

result = 0

import itertools

for pair in itertools.combinations(xy, 2):
  k = (pair[1][1] - pair[0][1]) / (pair[1][0] - pair[0][0])
  if -1 <= k <= 1:
    result += 1
  
print(result)  
