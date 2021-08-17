N = int(input())

array = []
result = 'Yes'

for i in range(N):
    w = input()
    if i == 0:
        array.append(w)
    elif array[-1][-1] == w[0] and not (w in array):
        array.append(w)

if len(array) == N:
    print('Yes')
else:
    print('No')
