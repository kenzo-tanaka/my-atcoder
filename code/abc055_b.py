import math

n = int(input())
mod = 1000000007

# 階乗
# 1..nまでのすべての整数の積のこと
print(math.factorial(n) % mod)