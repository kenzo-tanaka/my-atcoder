n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
used = Array.new(m, default = false)

result = "Yes"
b.each do |bb|
  flag = false

  a.each_with_index do |aa, idx|
    if bb == aa && used[idx] != true
      flag = true
      used[idx] = true
      break
    end
  end

  if flag == false
    result = "No"
    break
  end
end

puts result
