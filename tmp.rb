n = gets.chomp.to_i
mx = 2 * n + 1

used = Array.new(mx, default = false)
puts 1
STDOUT.flush
used[0] = true

flag = true
while flag
  i = gets.chomp.to_i
  break if i == 0

  # 相手からの入力を保存
  used[i-1] = true

  used.each_with_index do |el, idx|
    if el == false
      used[idx] = true
      puts idx + 1
      STDOUT.flush
      break
    end
  end
end
