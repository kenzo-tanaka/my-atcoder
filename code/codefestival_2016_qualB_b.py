n, a, b = list(map(int, input().split()))
s = input()

passed = 0
ranked = 0

for i in range(len(s)):
    if s[i] == 'a' and (passed < a + b):
        print('Yes')
        passed += 1
    elif s[i] == 'b' and (passed < a + b) and (ranked + 1 <= b):
        print('Yes')
        passed += 1
        ranked += 1
    else:
        print('No')
