def ans(*a)
  n = a.length
  ls = []
  rs = []
  a.each do |x|
    t = x[0]

    # すべてを閉区間にする
    l = x[1] * 2
    r = x[2] * 2
    l -= 1 if t >= 3
    r += 1 if t % 2 == 0

    ls << l
    rs << r
  end

  count = 0

  n.times do |i|
    n.times do |j|
      next if rs[i] < ls[j]
      next if rs[j] > ls[i]

      count += 1
    end
  end

  count
end

# def main
#   n = gets.chomp.to_i
#   a = []
#   n.times do
#     array = gets.chomp.split(' ').map(&:to_i)
#     a << array
#   end
#
#   print ans(*a)
# end
#
# main
