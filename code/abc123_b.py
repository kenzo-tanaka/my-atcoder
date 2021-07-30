a = int(input())
b = int(input())
c = int(input())
d = int(input())
e = int(input())

array = [a,b,c,d,e]

from itertools import permutations
pers = permutations(array, 5)

times = []

for per in pers:
    now = 0

    for i in range(5):
        now += per[i]
        if now % 10 == 0:
            gap = 0
        else:
            gap = 10 - now % 10
        
        if (i != 4):
            now += gap
        
    times.append(now)


print(min(times))    
