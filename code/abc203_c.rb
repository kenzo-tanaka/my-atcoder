def ans(n,k,abs)
  abs.sort!
  j = 0
  answer = k

  while(j < n && abs[j][0] <= answer)
    answer += abs[j][1]
    j += 1
  end

  answer
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  abs = []
  n.times { abs << gets.chomp.split(' ').map(&:to_i) }

  print ans n, k, abs
end

main

