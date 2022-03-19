def ans(n, a)
  ls = []
  rs = []
  n.times do |i|
    ai = a[i]
    t = ai[0]

    ls << ai[1]
    rs << ai[2]

    ls[i] *= 2
    rs[i] *= 2
    ls[i] += 1 if t >= 3
    rs[i] -= 1 if t % 2 == 0
  end

  cnt = 0
  (0...n).each do |i|
    (i+1...n).each do |j|
      cnt += 1 if [ls[i], ls[j]].max <= [rs[i], rs[j]].min
    end
  end
cnt
end

def main
  n = gets.chomp.to_i
  a = []
  n.times do
    array = gets.chomp.split(' ').map(&:to_i)
    a << array
  end

  print ans(n, a)
end

main
