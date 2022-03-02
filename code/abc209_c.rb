def ans(n,c)
  c.sort!
  count = 1
  mod = 10**9 + 7
  c.each_with_index do |x, index|
    count = count * (x - index) % mod
  end

  count
end

def main
  n = gets.chomp
  c = gets.chomp.split(' ').map(&:to_i)
  print ans(n,c)
end
