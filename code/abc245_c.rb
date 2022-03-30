n, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

def range_array(val, gap)
  mi = [val - gap, 0].max
  mx = val + gap
  [mi,mx]
end

def include?(val, array)
  array[0] <= val && array[1] >= val
end

flag = true
a_range, b_range = [], []

n.times do |i|
  aa, bb = a[i], b[i]
  if i == 0
    a_range, b_range = range_array(aa, k), range_array(bb, k)
    next
  else
    if include?(aa, a_range) || include?(bb, a_range) || include?(aa, b_range) || include?(bb, b_range)
      a_range, b_range = range_array(aa, k), range_array(bb, k)
    else
      flag = false
      break
    end
  end
end

puts flag ? "Yes" : "No"
