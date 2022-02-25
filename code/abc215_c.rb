s, k = gets.chomp.split(' ')
k = k.to_i

print s.split("").permutation(s.length).to_a.sort.uniq[k-1].join