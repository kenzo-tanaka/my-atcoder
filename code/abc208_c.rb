def ans(n:, k:, a:)
  # Init result
  result = Array.new(a.length, default = k / n)
  k %= n

  # Build pairs
  pairs = []
  n.times do |i|
    pairs << [a[i],i]
  end
  pairs.sort!

  k.times do |i|
    result[pairs[i][1]] += 1
  end

  result
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)
  puts ans(n:n, k:k, a:a)
end
