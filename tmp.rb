n = gets.chomp.to_i
xy = []
n.times { xy << gets.chomp.split(' ').map(&:to_i) }
s = gets.chomp

n.times do |i|
  xy[i] << s[i]
end

hash = xy.group_by do |e|
  e[1]
end
hash.each_value { |value| value.sort! }

flag = false
hash.each_value do |value|
  value.each_with_index do |v,idx|
    next if idx == 0

    if value[idx-1][2] == "R" && v[2] == "L"
      flag = true
      break
    end
  end

  break if flag
end

puts flag ? "Yes" : "No"
