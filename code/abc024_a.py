a,b,c,k = map(int, input().split())
s,t = map(int, input().split())

# 子供s, a
# 大人t, b
# 合計k以上なら一人あたりc円引き

result = s * a + t * b

if (s + t >= k):
    result -= (s + t) * c

print(result)
