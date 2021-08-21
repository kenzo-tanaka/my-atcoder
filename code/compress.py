command, s = list(input().split())
count = 1

# sを先頭からチェックしてtmpにappendする
# tmpの末尾と違っていたらappendする

# tmpの末尾と同じであれば、末尾1文字を削除
# その状態のtmpの len(tmp) tmp を結合した文字列
result = ''
tmp = ''
seque = ''

if command == 'compress':
    for i in range(len(s)):
        if i == 0:
            seque += s[i]  # 連続することを期待
        else:
            if seque != '':
                if seque[-1] != s[i]:
                    tmp = seque + s[i]

                    if len(seque) != 1:
                        result += str(len(seque)) + seque[0]

                    seque = ''
            else:
                seque += s[i]
                print(seque)

            # else:
            #     # tmp = ABCA
            #     # s[i] = A のタイミング
            #     # ABCA -> -3ABC
            #     st = tmp[0:len(tmp) - 1]
            #     result += str(-len(st)) + st

            #     seque = tmp[-1] + s[i]  # ABCAの末尾1文字 + A

            #     tmp += s[i]  # Aの連続

if seque != '':
    result += str(len(seque)) + seque[0]

print(result)
