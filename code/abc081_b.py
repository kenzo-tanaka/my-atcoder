n = int(input())
a = list(map(int, input().split()))

counter = 0
flag = True

while flag:
    for i in range(len(a)):
        if a[i] % 2 == 0:
            a[i] = a[i] // 2
            if i == len(a) - 1:
                counter += 1
        else:
            flag = False
            break

print(counter)
