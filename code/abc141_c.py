n, k, q = map(int, input().split())

members = [k - q] * n

# 愚直にやると O(NQ)なのでやり方を工夫
# 全員-1をQ回しておく
# 正解したら+1にする

for i in range(q):
    a = int(input())
    idx = a - 1
    members[idx] += 1

for i in members:
    if i <= 0:
        print('No')
    else:
        print('Yes')
