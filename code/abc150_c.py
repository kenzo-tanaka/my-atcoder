from itertools import permutations

n = int(input())

p = list(map(int, input().split()))
q = list(map(int, input().split()))

sorted_p = sorted(p)
sorted_q = sorted(q)

Ppers = list(permutations(sorted_p, n))
Qpers = list(permutations(sorted_q, n))

p_position, q_position = 0, 0

for i in range(len(Ppers)):
    if list(Ppers[i]) == p:
        p_position = i + 1

for i in range(len(Qpers)):
    if list(Qpers[i]) == q:
        q_position = i + 1

print(abs(p_position - q_position))
