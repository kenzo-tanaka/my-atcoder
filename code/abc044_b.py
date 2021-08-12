w = input()
l = list(w)

result = 'Yes'

for i in l:
    if l.count(i) % 2 == 0:
        next
    else:
        result = 'No'
        break

print(result)
