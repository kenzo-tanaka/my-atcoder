s = input()

# @see: https://note.nkmk.me/python-list-index/
Aidx = [i for i, x in enumerate(s) if x == 'A']
Zidex = [i for i, x in enumerate(s) if x == 'Z']

print(max(Zidex) - min(Aidx) + 1)
