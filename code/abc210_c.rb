def ans(n:, k:, c:)
  max = 1
  (n - k).times do |i|
    max = [[c[i], c[i+1], c[i+2]].uniq.length, max].max
  end
  max
end
