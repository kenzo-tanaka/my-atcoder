n,l = map(int, input().split())

# n回文字列を取得して、配列化
array=[input() for i in range(n)]
print(*sorted(array), sep='')
