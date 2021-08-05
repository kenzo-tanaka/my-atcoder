n = int(input())
a = list(map(int, input().split()))

alice = 0
bob = 0

for i in range(n):
  mx = max(a)
  if i % 2 == 0:
    alice += mx
  else:
    bob += mx

  a.remove(mx)

print(alice-bob)
