a,b = list(map(int, input().split()))

taps = 1
count = 0

while True:
  if (b == 1):
    break

  taps += a
  taps -= 1
  count += 1

  if (taps >= b):
    break

print(count)
