s = []
4.times { s << gets.chomp }

result = ['H', '2B', '3B', 'HR'].all? { |v| s.include? v }

puts result ? "Yes" : "No"
