def ans(n, a)
  result = 0
  gap = 0
  (n-1).times do |i|
    result += 1 if (a[i] - a[i+1]) && 200 == 0

    # 相殺されるパターンを考える
  end
end
