n = int(input())
array = []

for i in range(n):
    a = int(input())
    array.append(a)

mx = max(array)
mx2 = sorted(array, reverse=True)[1]

for i in array:
    if i == mx:
        print(mx2)
    else:
        print(mx)
