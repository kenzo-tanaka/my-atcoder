def ans(n:, k:, c:)
  # initial max
  kind = 0
  max = 1

  # build hash
  hash = Hash.new
  c.each { |x| hash[x.to_s] = 0 }

  n.times do |i|
    kind += 1 if hash[c[i].to_s] == 0
    hash[c[i].to_s] += 1

    if (i >= k)
      hash[c[i-k].to_s] -= 1
      kind -= 1 if hash[c[i-k].to_s] == 0
    end

    max = [kind, max].max
  end

  max
end

def main
  n, k = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)
  print ans(n: n, k: k, c: c)
end

# actual = ans(n: 10, k: 6, c: %w[304621362 506696497 304621362 506696497 834022578 304621362 414720753 304621362 304621362 414720753])
# print actual
# main
