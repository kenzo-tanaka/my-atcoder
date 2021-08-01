n,x = list(map(int, input().split()))
s = input()

result = x

for i in range(len(s)):
  if s[i] == 'o':
    result += 1
  else:
    if result != 0:
      result -= 1

print(result)
