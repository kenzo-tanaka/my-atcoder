N = int(input())
B = list(map(int, input().split()))
A = []
for i in range(len(B)):
    if A == []:
        A.append(B[i])
        A.append(B[i])  # 2,2
    else:
        if A[-1] <= B[i]:
            A.append(B[i])
        else:
            A[-1] = B[i]
            A.append(B[i])

print(sum(A))
