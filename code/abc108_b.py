x1, y1, x2, y2 = list(map(int, input().split()))
x_gap, y_gap = x2 - x1, y2 - y1

x3 = x2 - y_gap
y3 = y2 + x_gap

x4 = x1 - y_gap
y4 = y1 + x_gap

print(x3, y3, x4, y4)
