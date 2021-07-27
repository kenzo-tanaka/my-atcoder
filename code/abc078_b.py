x,y,z = map(int, input().split())

# 余りがzより小さいときは右端に隙間がないため -1
if (x % (y + z)) < z:
    result = int(x / (y + z)) - 1
    print(result)
else:
    result = int(x / (y + z))
    print(result)
