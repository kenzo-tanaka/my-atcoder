def ans(n, a)
  ls = []
  rs = []
  n.times do |i|
    ai = a[i]
    t = ai[0]
    l = ai[1] * 2
    r = ai[2] * 2

    l += 1 if t >= 3
    r -= 1 if t % 2 == 0

    ls << l
    rs << r
  end

  result = 0
  n.times do |i|
    n.times do |j|
      next if rs[i] < ls[j]
      next if rs[j] > ls[i]

      result += 1
    end
  end

  result
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
