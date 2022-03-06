# https://atcoder.jp/contests/abc242/submissions/29913226
def ans(n)
  mod=998244353

  # 以下で計算がしやすいように
  # 番兵を用意する
  x = [0,1,1,1,1,1,1,1,1,1,0]

  1.upto(n-1) do |i|
    y = Array.new(11) do |j|
      # 番兵なので、0のまま
      if j == 0 || j == 10
        0
      else
        # ここの計算を共通化できる
        (x[j-1] + x[j] + x[j+1]) % mod
      end
    end

    x = y
  end

  x.sum % mod
end

def main
  n = gets.chomp.to_i
  print ans(n)
end

main
