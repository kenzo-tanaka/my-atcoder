n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
print a.index(a.sort.reverse[1]) + 1