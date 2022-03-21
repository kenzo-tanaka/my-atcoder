n = gets.chomp.to_i

def doubled(n)
  (n.to_s * 2).to_i
end

j,count = 1, 0

while doubled(j) <= n
  count += 1
  j += 1
end

puts count


