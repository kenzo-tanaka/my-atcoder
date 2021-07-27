n,a,b = map(int, input().split())
ab = a + b

div = n // ab
mod = n % ab

result = (div * a) + min(mod, a)
print(result)
