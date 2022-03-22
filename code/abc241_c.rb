n = gets.chomp.to_i
s = []
n.times { s << gets.chomp.split('') }

def check(array, time)
  flag = false
  time.times do |i|
    tmp = array[i..i+5]
    if tmp.count("#") >= 4
      flag = true
      break
    end
  end

  flag
end

# 横
flag = false
s.each do |ss_array|
  flag = check(ss_array, n - 5)
  break if flag
end

# 縦
unless flag
  n.times do |i|
    array = s.map { |x| x[i] }
    flag = check(array, n - 5)
    break if flag
  end
end

# 斜め
unless flag
  j, k = 0, 0
  6.times do
    s[j, k]
  end
end

puts flag ? "Yes" : "No"
