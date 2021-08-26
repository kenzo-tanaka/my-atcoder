N, M = map(int, input().split())

# ACがくるまでのWAの数をカウント
# ACがきたらACをカウント
# ここでkeyを含む形で初期化する
submissions = {i + 1: [0, False] for i in range(N)}
ac = 0
wa = 0

for i in range(M):
    p, s = input().split()
    p = int(p)

    # Count up warning
    if s == 'WA':
        if submissions[p][1] == False:
            submissions[p][0] += 1
        else:
            next

    elif s == 'AC':
        #  初めてACしたタイミング
        if submissions[p][1] == False:
            submissions[p][1] = True
            wa += submissions[p][0]
            ac += 1
        else:
            next

print(ac, wa)
