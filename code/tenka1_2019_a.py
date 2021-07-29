a,b,c = map(int, input().split())

# a,b,cは異なる整数である
# 家3が1,2の間にある

if (a < c < b) or (b < c < a):
    print('Yes')
else:
    print('No')
