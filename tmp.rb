n = gets.chomp.to_i
puts 1
STDOUT.flush

# 使用済み
array = []
array << 1

flag = true
while flag
  res = gets.chomp.to_i
  if res == 0
    flag = false
  else
    array << res

    # TODO: perf
    (1..(2 * n + 1)).each do |i|
      next if array.include? i

      array << i
      puts i
      STDOUT.flush
      break
    end
  end
end
