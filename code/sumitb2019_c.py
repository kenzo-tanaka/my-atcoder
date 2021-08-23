# --解説--

# @see https://youtu.be/vVOwtLuh60U?t=2811

# 典型的なDP問題だが、楽な解法:
# 買う個数を決め打ちする
# 買う個数をnとすると
# 作れる金額は 100n+(0~5n)
# 100n <= x <= 100n + 5n
# n <= x/100まで試せばOK

# --解説--

X = int(input())
mx_n = X // 100
result = 0

for i in range(mx_n):
    i += 1
    if (100 * i <= X <= 100 * i + 5 * i):
        result = 1

print(result)
