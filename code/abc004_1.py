s1, e1 = map(int, input().split())
s2, e2 = map(int, input().split())
s3, e3 = map(int, input().split())

e1 = 0.1 * e1
e2 = 0.1 * e2
e3 = 0.1 * e3

print(int((s1 * e1)+(s2 * e2)+(s3 * e3)))
