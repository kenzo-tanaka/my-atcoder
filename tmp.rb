n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
a.sort!.uniq!

j,i = 0, 0
result = nil

while true
  if i >= n
    result = j
    break
  end

  if a[i] == j
    i += 1
    j += 1
    next
  else
    result = j
    break
  end
end

puts result
