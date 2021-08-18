S = input()

# 北がある場合は南がないといけない
# 東がある場合は西がないといけない


def check(value):
    if value == 'N':
        return ('S' in S)
    elif value == 'W':
        return ('E' in S)
    elif value == 'S':
        return ('N' in S)
    elif value == 'E':
        return ('W' in S)


result = 'Yes'

for i in range(len(S)):
    if check(S[i]):
        next
    else:
        result = 'No'

print(result)
