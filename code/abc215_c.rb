def answer(s:, k:)
    s.split('').permutation(s.length).to_a.sort.uniq[k-1].join
end

def main
    s, k = gets.chomp.split(' ')
    k = k.to_i
    print answer(s: s, k: k)
end
