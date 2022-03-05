def ans(n)
  count = 0
  mod = 998244353
  tmp = []
  (1..9).each do |i|
    (1..9).each do |j|
      (1..9).each do |k|
        (1..9).each do |l|
          if (j-i).abs <= 1 && (j-k).abs <= 1 && (l-k).abs <= 1
            count += 1
            tmp << (i.to_s + j.to_s + k.to_s + l.to_s).to_i
          end
        end
      end
    end
  end

  print tmp
  count % mod
end

ans(4)

