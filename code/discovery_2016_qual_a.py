w = int(input()) # 40
text = 'DiscoPresentsDiscoveryChannelProgrammingContest2016'

r = 51
s = 0
e = w

while (r > 0):
    print(text[s:e])
    s = e
    e += w
    r -= w
