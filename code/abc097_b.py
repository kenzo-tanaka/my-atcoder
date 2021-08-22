X = int(input())
array = []

for i in range(31):
    i += 1

    for j in range(2, 10):
        if (i**j) <= X:
            array.append(i**j)

print(max(array))
