n, k = gets.chomp.split(' ').map(&:to_i)
abs = []
n.times { abs << gets.chomp.split(' ').map(&:to_i) }

abs.sort!
ans = k
j = 0

while j < n && abs[j][0] <= ans
  ans += abs[j][1]
  j += 1
end

pp ans
