n, k = map(int, input().split())

a = n % k
print(min(a, abs(k - a)))
