a,b,c,d = map(int, input().split())

t_team = b / a
a_team = d / c

if (t_team > a_team):
    print('TAKAHASHI')
elif (t_team == a_team):
    print('DRAW')
else:
    print('AOKI')

