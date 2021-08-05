a,b = list(input().split())
v = int(a+b)

result = 'No'

for i in range(316):
  i += 1
  if (i * i == v):
    result = 'Yes'

print(result)
