a,b,c,d = map(int, input().split())

# Takahashi(体力: a, 攻撃力: b)
# Aoki(体力: c, 攻撃力: d)
# これを再帰的に繰り返す

result = ''

while True:
    c -= b
    if c <=0:
        result = 'Yes'
        break
    a -= d
    if a <=0:
        result = 'No'
        break

print(result)
