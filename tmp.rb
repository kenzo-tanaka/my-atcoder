n = gets.chomp.to_i
used = Array.new(2*n + 1, default = false)

# set used
puts 1
STDOUT.flush
used[0] = true

while true
  i = gets.chomp.to_i
  break if i == 0

  used[i-1] = true
  used.each_with_index do |e,idx|
    if e
      next
    else
      puts idx+1
      STDOUT.flush

      used[idx] = true
      break
    end
  end
end
