h,w = list(map(int, input().split())) # 10の9乗
import math

if (min(h,w) == 1):
  result = 1
else:
  result = math.ceil((h*w) / 2)

print(result)  

