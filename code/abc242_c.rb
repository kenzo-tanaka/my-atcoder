def add(x,y)
  mod = 998244353
  x += y
  x %= mod
end

def ans(n)
  mod = 998244353
  # build dp
  dp = Array.new(n)
  # CAUTION!:
  # Array.new(n, default = Array.new(9, default = 0))と定義すると
  # dp[0][1]などを変更したとき、他の要素も変更されるので、正しいロジックとならないので注意
  n.times { |i| dp[i] = Array.new(9, default = 0)  }
  9.times { |d| dp[0][d] = 1 }

  (1..(n-1)).each do |i|
    9.times do |d|
      dp[i][d] += dp[i-1][d-1] if d >= 1
      dp[i][d] %= mod

      dp[i][d] += dp[i-1][d]
      dp[i][d] %= mod

      dp[i][d] += dp[i-1][d+1] if d <= 7
      dp[i][d] %= mod
    end
  end

  result = 0
  9.times do |d|
    result += dp[n-1][d]
  end

  result
end

# def main
#   n = gets.chomp.to_i
#   print ans(n)
# end
#
# main
