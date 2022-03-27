s, t = gets.chomp.split(' ').map(&:to_i)

result = 0
(0..s).each do |a|
  (0..(s-a)).each do |b|
    (0..(s-a-b)).each do |c|
      result += 1 if (a+b+c) <= s && (a*b*c) <= t
    end
  end
end

puts result
