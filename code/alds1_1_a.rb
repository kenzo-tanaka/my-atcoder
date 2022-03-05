def ans(n, a)
  # 問題の仕様上初期表示
  puts a.join(' ')
  (1..(n-1)).each do |i|
    value = a[i]
    j = i - 1

    # 1つ前の値a[j]がvalueよりも大きいとき
    while j >= 0 && a[j] > value
      a[j+1] = a[j]
      j -= 1
    end
    # TODO: これが何かわかていない
    a[j+1] = value

    puts a.join(' ')
  end
end

def main
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)

  ans(n,a)
end

main
