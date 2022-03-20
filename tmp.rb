n, k = gets.chomp.split(' ').map(&:to_i)
ab = []
n.times { ab << gets.chomp.split(' ').map(&:to_i) }

ab.sort!

i = 0
res = k

while i < n && ab[i][0] <= res
  res += ab[i][1]
  i += 1
end

puts res
