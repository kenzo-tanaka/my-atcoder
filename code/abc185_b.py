n,m,t = list(map(int, input().split()))

result = n
now = 0

for i in range(m):
  a, b = list(map(int, input().split()))

  # 移動後のバッテリーチェック
  result -= a - now
  if result <= 0:
    print('No')
    exit()

  # カフェでの充電(バッテリー残量がバッテリー容量と等しい場合は増えない)
  result += b - a
  if result > n:
    result = result - (result - n)

  # 現在地を変更
  now = b

  # Check last
  if i == m - 1:
     result -= t - b
  
  if result <= 0:
    print('No')
    exit()

  
print('Yes')
