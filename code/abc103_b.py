S = input()
T = input()

result = 'No'

if S == T:
    result = 'Yes'

for i in range(len(S)):
    S = S[-1] + S[0:-1]
    if S == T:
        result = 'Yes'
        break

print(result)
