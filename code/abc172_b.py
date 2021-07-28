s = input()
t = input()

# sの1文字を選択して
# 別の文字に書き換える
# s,tの長さは等しい
# 操作回数の最小値を求める

count = 0

for i in range(len(s)):
    if s[i] == t[i]:
        next
    else:
        count += 1

print(count)        