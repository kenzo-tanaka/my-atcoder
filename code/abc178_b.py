a,b,c,d = list(map(int, input().split()))

ab = [a,b]
cd = [c,d]

result = -10 ** 18

for i in ab:
  for j in cd:
    v = i * j
    if v > result:
      result = v

print(result)
