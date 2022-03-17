n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

result_1 = 0
n.times do |i|
  result_1 += 1 if a[i] == b[i]
end

result_2 = 0
n.times do |i|
  n.times do |j|
    result_2 += 1 if i != j && (a[i] == b[j] || a[j] == a[i])
  end
end

pp result_1
pp result_2
