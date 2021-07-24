# s = input()
# a,b,c= s[0:5], s[6:13], s[14:19]
# print(a+" "+b+" "+c)

s=input().split(',') # 文字列を,でsplitして配列化
print(*s) # *で配列を展開