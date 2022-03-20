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
    array.sort!

    check = false
    array.each_with_index do |x, idx|
      next if idx == 0

      pre = array[idx-1]
      if (x - pre) >= 2
        new = pre + 1
        array.insert(idx, new)
        check = true

        puts new
        STDOUT.flush

        break
      end
    end

    if check == false
      new = array.size + 1
      array << new
      puts new
      STDOUT.flush
    end

    # # TODO: perf
    # (1..(2 * n + 1)).each do |i|
    #   next if array.include? i
    #
    #   array << i
    #   puts i
    #   STDOUT.flush
    #   break
    # end
  end
end
