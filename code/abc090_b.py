a, b = map(int, input().split())
count = 0


def ispalindrome(str):
    return 1 if str == str[::-1] else 0


for i in range(a, b + 1):
    s = str(i)
    count += ispalindrome(s)

print(count)
