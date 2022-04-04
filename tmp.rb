n, k = gets.chomp.split(' ').map(&:to_i)
c = gets.chomp.split(' ').map(&:to_i)
hash,kind,mx = {}, 0, 0
c.each { |x| hash[x] = 0 }

n.times do |i|
  # 新しい種類を発見
  kind += 1 if hash[c[i]] == 0
  hash[c[i]] += 1

  if i >= k
    hash[c[i - k]] -= 1
    kind -= 1 if hash[c[i - k]] == 0
  end

  mx = [mx, kind].max
end

puts mx
