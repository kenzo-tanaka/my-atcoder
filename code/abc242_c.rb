def ans(n)
  # build dp
  dp = Array.new(1000005, default = Array.new(10, default = 0))
  (1..9).each { |d| dp[1][d] = 1 }

  for i in (2..n)
    for d in (1..9)
      dp[i][d] += dp[i-1][d-1] if d-1 >= 1
      dp[i][d] += dp[i-1][d]
      dp[i][d] += dp[i-1][d+1] if d+1 <= 9
    end
  end

  res = 0
  (1..9).each do |d|
    res += dp[n][d]
  end

  res
end

print ans(2)

