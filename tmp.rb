n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
used = Array.new(n, default = false)

flag = true
b.each do |bb|
  find = false
  a.each_with_index do |aa, idx|
    if aa == bb && used[idx] == false
      find = true
      used[idx] = true
      break
    end
  end

  unless find
    flag = false
    break
  end
end

puts flag ? "Yes" : "No"
