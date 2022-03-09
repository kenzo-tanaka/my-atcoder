def rebuild_array(arr)
  tmp = []
  11.times do |j|
    if j == 0 || j == 10
      tmp[j] = 0
    else
      tmp[j] = (arr[j-1] + arr[j] + arr[j+1]) % 998244353
    end
  end
  tmp
end

def ans(n)
  # 番兵を前後に含めた配列を用意する
  # 番兵は0とする
  arr = Array.new(11, default = 0)
  9.times { |i| arr[i+1] = 1 }

  (n-1).times { arr = rebuild_array arr }
  arr.sum % 998244353
end

def main
  n = gets.chomp.to_i
  print ans n
end

main
