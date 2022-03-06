def ans(n,as)
  ls = []
  rs = []

  as.each do |a|
    t = a[0]
    l = a[1]
    r = a[2]

    l *= 2
    r *= 2

    if t == 3 || t == 4
      l += 1
    end

    if t ==2 || t == 4
      r -= 1
    end

    ls << l
    rs << r
  end

  cnt = 0
  (0..(n-1)).each do |i|
    (i+1..(n-1)).each do |j|
      cnt += 1 if [ls[i], ls[j]].max <= [rs[i], rs[j]].min
    end
  end
  cnt
end

def main
  n = gets.chomp.to_i
  a = []
  n.times { a<< gets.chomp.split(' ').map(&:to_i) }

  print ans(n,a)
end

main
