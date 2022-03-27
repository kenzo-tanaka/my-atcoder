n, k = gets.chomp.split(' ').map(&:to_i)
ab = []
n.times { ab << gets.chomp.split(' ').map(&:to_i) }
ab.sort!

j = 0
result = k

while j < n && result >= ab[j][0]
  result += ab[j][1]
  j += 1
end

puts result
