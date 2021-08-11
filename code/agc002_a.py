a, b = map(int, input().split())

# すべての積が正か負か0か
result = ''

if a > 0 and b > 0:
    result = 'Positive'
elif a <= 0 and b >= 0:
    # include 0
    result = 'Zero'
else:
    count = abs(a - b) + 1  # 掛け算する回数
    if count % 2 == 0:
        result = 'Positive'
    else:
        result = 'Negative'

print(result)
