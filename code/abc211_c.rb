S = gets.chomp
T = 'chokudai'
MOD = 10**9 + 7

s_len = S.length
t_len = T.length

# dp[i][j]を定義
# 番兵を含むので+1した長さ)
dp = Array.new(s_len + 1, Array.new(t_len + 1, 0))

# ここの初期化をもう少しきれいにしたい
# 番兵を用意
s_len.times do |i|
    dp[i][0] = 1
end

S.chars.each_with_index do |si, i|
    i +=1 # 番兵回避

    T.chars.each_with_index do |tj, j|
        j += 1 # 番兵回避

        if si != tj
            dp[i][j] = dp[i-1][j]
        else
            dp[i][j] = dp[i-1][j] + dp[i-1][j-1]
            dp[i][j] %= MOD
        end
    end
end

print(dp.last.last)
