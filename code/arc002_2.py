import datetime
y,m,d = map(int, input().split('/'))

day = datetime.date(y,m,d)


while y%(m*d) != 0:
    day = datetime.date(y,m,d) + datetime.timedelta(days = 1)
    y,m,d = day.year, day.month, day.day

print(day.strftime("%Y/%m/%d"))

