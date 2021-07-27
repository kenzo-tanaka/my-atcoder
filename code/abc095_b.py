n,x = map(int, input().split())
ms = [int(input()) for i in range(n)]

r = x - sum(ms)
result = (r // min(ms)) + n

print(result)
