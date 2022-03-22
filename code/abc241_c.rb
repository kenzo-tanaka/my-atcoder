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

flag = false
s.each do |ss_array|
  flag = check(ss_array, n - 5)
  break if flag
end

puts flag ? "Yes" : "No"
