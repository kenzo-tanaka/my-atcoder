s = gets.chomp
t = gets.chomp

ss = s.split('')
tt = t.split('')

count = 0

3.times do |i|
  count += 1 if ss[i] == tt[i]
end

if count == 3
  puts "Yes"
elsif count == 2
  puts "No"
else
  puts "Yes"
end
