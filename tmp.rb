def ans(n)
  # Set default values
  dp = Array.new(11, default = 0)
  9.times { |i| dp[i+1] = 1 }
  mod = 998244353

  (n-1).times do
    new_arr = Array.new(11, default = 0)
    9.times do |j|
      j += 1
      new_arr[j] = (dp[j-1] + dp[j] + dp[j+1]) % mod
    end

    dp = new_arr
  end

  dp.sum % mod
end

def main
  n = gets.chomp.to_i
  print ans n
end

main
