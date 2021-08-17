S = input()

result = 'WA'
if S[0] == 'A':
    if S[2:len(S) - 1].count('C') == 1:
        S = list(S)
        S.remove('A')
        S.remove('C')

        if (''.join(S).islower()):
            result = 'AC'

print(result)
