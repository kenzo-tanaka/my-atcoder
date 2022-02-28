def ans(n:, k:, c:)
  max = 1
  (n - k).times do |i|
    array = c[i..(k-1+i)]
    max = [array.uniq.length, max].max
    break if max == k
  end
  max
end

def main
  n, k = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)
  print ans(n: n, k: k, c: c)
end

# main
