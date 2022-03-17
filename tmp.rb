h,w,n = gets.chomp.split(' ').map(&:to_i)
a,b = [], []
abs = []
n.times do
  ab = gets.chomp.split(' ').map(&:to_i)
  abs << ab
  a << ab[0]
  b << ab[1]
end

a.sort!
b.sort!

hash_a, hash_b = {}, {}

a.uniq.each_with_index do |x, idx|
  hash_a[x] = idx + 1
end

b.uniq.each_with_index do |x, idx|
  hash_b[x] = idx + 1
end

abs.each do |ab|
  puts "#{hash_a[ab[0]]} #{hash_b[ab[1]]}"
end

