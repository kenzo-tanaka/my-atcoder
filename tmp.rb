# 3 2
# 1 1 3
# 3 1

n, m = gets.chomp.split(' ').map(&:to_i)
as = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

a = []
n.times { |i| a << [as[i]] }

res = "Yes"
m.times do |i|
  flag = false
  n.times do |j|
    if a[j][0] == b[i] && a[j][1].nil?
      flag = true
      a[j][1] = true
    end
  end
  res = "No" if flag == false
end

puts res
