x = int(input())

while True:
    prime = True
    for i in range(x):
        i += 2
        if (x != i) and (x % i == 0):
            prime = False
            break

    if prime:
        break
    else:
        x += 1

print(x)
