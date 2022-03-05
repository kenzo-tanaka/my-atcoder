def answer(a, n)
  [[1,2,3,4,5], 8]

  flag = true

  # ソート済みのindex
  i = 0

  # swap回数
  swap = 0

  while flag
    flag = false

    # jをn-1から小さくしていく
    ((n-1).downto(i+1)).each do |j|
      # 順番が逆であればswapする
      if a[j] < a[j-1]
        nex = a[j]
        pre = a[j-1]

        # swap
        a[j] = pre
        a[j-1] = nex

        swap += 1

        flag = true
      end
    end
    i += 1
  end

  [a, swap]
end

def main
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)

  result = answer(a,n)

  puts result[0].join(' ')
  puts result[1]
end

main
