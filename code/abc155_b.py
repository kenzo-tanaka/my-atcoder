n = int(input())
a = list(map(int, list(input().split())))

result = 'APPROVED'

for ai in a:
    if (ai % 2 == 0):
        if (ai % 3 == 0) or (ai % 5 == 0):
            next
        else:
            result = 'DENIED'
    
print(result)
