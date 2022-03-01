def ans(n:, k:, a:)
  array = Array.new(a.length, default = 0)
  while k >= n
    array.each_with_index do |x, idx|
      array[idx] += 1
    end
    k -= 1
  end
  array
end
