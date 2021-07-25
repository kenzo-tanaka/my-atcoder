c = input()

result = c
for i in range(2000):
    i = 2000 - i
    result = result.replace(" "*i, ',') 

print(result)
