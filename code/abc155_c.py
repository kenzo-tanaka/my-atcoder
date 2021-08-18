N = int(input())

dic = {}
mx = 1


def add_key(key):
    try:
        dic[key] += 1
    except:
        dic[key] = 1


for i in range(N):
    S = input()
    add_key(S)

    if dic[S] > mx:
        mx = dic[S]

l = sorted([k for k, v in dic.items() if v == mx])
for i in (l):
    print(i)
