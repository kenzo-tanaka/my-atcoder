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
