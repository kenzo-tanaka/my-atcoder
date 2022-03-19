n = gets.chomp.to_i
xy = []
n.times do
  xy << gets.chomp.split(' ').map(&:to_i)
end
s = gets.chomp
s.split('').each_with_index do |ss, idx|
  xy[idx] << ss
end
hash = xy.group_by { |element| element[1] }

result = "No"
hash.each_value do |array|
  array.sort!
  array.each_with_index do |element, idx|
    next if idx == 0

    if array[idx-1][2] == "R" && element[2] == "L"
      result = "Yes"
      break
    end
  end
end

puts result

