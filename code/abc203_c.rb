def ans(n,k,abs)
  hash = {}
  abs.each do |ab|
    hash[ab[0]] = ab[1]
  end

  position = 0
  while k > 0
    k -= 1
    k += hash[position] unless hash[position].nil?
    position += 1
  end

  position
end
