s = input()
m = int(s.split('/')[1])
d = int(s.split('/')[2])

if (m == 4 and d <= 30) or (m < 4):
    print('Heisei')
else:
    print('TBD')
