s = input()

l = 0
result = 0

for i in range(len(s)):
  v = s[i]
  if v == 'A' or v == 'C' or v == 'G' or v == 'T':
    l += 1

    if l > result:
      result = l
  else:
    l = 0

print(result)
