def ans(n:, k:, a:)
  result = Array.new(a.length, default = 0)
  while k >= n
    result.each_with_index do |x, idx|
      result[idx] += 1
      k -= 1
    end
  end

  unless k == 0
    sort = a.sort
    sort[0..(k-1)].each do |x|
      idx = a.index(x)
      result[idx] += 1
    end
  end

  result
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)
  print ans(n:n, k:k, a:a)
end
