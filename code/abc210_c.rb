def ans(n:, k:, c:)
  # initial max
  kind = 0
  max = 1

  # build hash
  hash = Hash.new
  c.each { |x| hash[x.to_s] = 0 }

  # set initial values
  c[0..(k-1)].each do |x|
    kind += 1 if hash[x.to_s] == 0
    hash[x.to_s] += 1

    max = kind
  end

  # loop
  (n - k).times do |i|
    i = i + 1
    first = c[i]
    last = c[(k-1)+i]

    # check kind
    hash[first.to_s] -= 1
    kind -= 1 if hash[first.to_s] == 0

    kind += 1 if hash[last.to_s] == 0
    hash[last.to_s] += 1

    # Set max
    max = [max, kind].max
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
