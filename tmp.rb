def ans(n,k,a)
  result = Array.new(n, default = k/n)
  k %= n

  tmp = []
  a.each_with_index { |x, idx| tmp << [x, idx] }
  tmp.sort!

  k.times do |i|
    # i番目に大きいaの値のindex
    result[tmp[i][1]] += 1
  end

  result
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)

  puts ans n,k,a
end

main
