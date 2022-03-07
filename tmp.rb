def ans(n,k,c)
  hash = {}
  c.each { |x| hash[x] = 0 }

  kind = 0
  max = 0

  n.times do |i|
    kind += 1 if hash[c[i]] == 0
    hash[c[i]] += 1

    if i >= k
      hash[c[i-k]] -= 1
      kind -= 1 if hash[c[i-k]] == 0
    end

    max = [max, kind].max
  end

  max
end

def main
  n, k = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)
  print ans(n,k,c)
end

main
