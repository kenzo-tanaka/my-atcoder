n, k = gets.chomp.split(' ').map(&:to_i)
abs = []
n.times { abs << gets.chomp.split(' ').map(&:to_i) }

abs.sort!

j = 0
result = k

while j < n && abs[j][0] <= result
  result += abs[j][1]
  j += 1
end

pp result
