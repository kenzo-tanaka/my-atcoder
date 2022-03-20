n = gets.chomp.to_i
xy = []
n.times { xy << gets.chomp.split(' ').map(&:to_i) }
s = gets.chomp
s.split('').each_with_index { |ss, idx| xy[idx] << ss }

# y座標が同じものでgroup
grouped = xy.group_by { |element| element[1] }

result = "No"

grouped.each_value do |array|
  # あらかじめソートしておくことで
  # indexが隣り合うものをチェックするだけでよくなる
  array.sort!
  array.each_with_index do |el, idx|
    next if idx == 0

    if array[idx-1][2] == "R" && el[2] == "L"
      result = "Yes"
      break
    end
  end
end

puts result


