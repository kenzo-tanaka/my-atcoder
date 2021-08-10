s = input()
az = [chr(ord("a") + i) for i in range(26)]  # a-z

l = sorted(list(set(list(s))))
result = 'None'

for i in l:
    if i == az[0]:
        az.remove(i)
        next
    else:
        result = az[0]

if len(az) == 0:
    print(result)
else:
    print(az[0])
