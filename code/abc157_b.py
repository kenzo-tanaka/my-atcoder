a = []

for i in range(3):
  v = list(map(int, input().split()))
  a.append(v)

n = int(input())
indexes = []

for i in range(n):
  b = int(input())

  # indexを取得
  for j in range(3):
    for k in range(3):
      if a[j][k] == b:
        indexes.append([j,k])

# 前もってソートすることでチェックしやすくする
indexes = sorted(indexes)

result = 'No'

# 3つの組み合わせ
import itertools
for pair in itertools.combinations(indexes, 3):

  # 斜めは2パターンしかない
  if pair == ([0,0], [1,1], [2,2]):
    result = 'Yes'
    break
  elif pair == ([0, 2], [1, 1], [2, 0]):
    result = 'Yes'
    break
  elif (pair[0][0] == pair[1][0] == pair[2][0]):
    result = 'Yes'
    break
  elif (pair[0][1] == pair[1][1] == pair[2][1]):
    result = 'Yes'
    break

print(result)
