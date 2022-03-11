def ans(n, a)
  result = 0
  gap = 0
  (n-1).times do |i|
    result += 1 if (a[i] - a[i+1]) % 200 == 0

    if i != 0 && gap == 0 && (a[i] - a[i+1]) % 200 == 0
      result += 1
    end

    # +100, -100 などで相殺されるパターンを考える
    gap += a[i] - a[i+1]
    result += 1 if gap == 0
  end
  result
end

def main
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)
  print ans n,a
end
