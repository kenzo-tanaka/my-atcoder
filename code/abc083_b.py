N, A, B = map(int, input().split())

result = 0
for i in range(N):
    i += 1
    if A <= sum(list(map(int, list(str(i))))) <= B:
        result += i

print(result)
