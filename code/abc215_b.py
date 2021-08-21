N = int(input())

import math

# @see https://note.nkmk.me/python-math-exp-log/
result = math.floor(math.log2(N))

if 2**result > N:
    result -= 1

print(result)
