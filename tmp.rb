n = gets.chomp.to_i

used = Array.new(2 * n + 1, default = false)
puts 1
STDOUT.flush

used[0] = true

while true
  x = gets.chomp.to_i
  if x == 0
    break
  else
    # used
    used[x-1] = true

    # output
    used.each_with_index do |e, idx|
      next if e == true

      used[idx] = true
      puts idx + 1
      STDOUT.flush

      break
    end
  end
end
