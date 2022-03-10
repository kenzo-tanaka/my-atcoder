def ans(n,k,abs)
  abs.sort!
  remain, position = k, 0

  n.times do |i|
    a, b = abs[i][0], abs[i][1]
    if a <= remain
      remain -= a - position
      remain += b
      position = a
    else
      position += remain
      remain = 0
    end
  end

  position += remain if remain > 0
  position
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  abs = []
  n.times { abs << gets.chomp.split(' ').map(&:to_i) }

  print ans n, k, abs
end

