def ans(h,w,n,abs)
  as, bs = [], []
  abs.each_with_index { |x, idx| as[idx], bs[idx] = x[0], x[1] }

  a_hash, b_hash = {}, {}
  as.sort.uniq.each_with_index do |x, idx|
    a_hash[x] = idx + 1
  end
  bs.sort.uniq.each_with_index do |x, idx|
    b_hash[x] = idx + 1
  end

  result = []

  abs.each do |ab|
    a = ab[0]
    b = ab[1]

    result << [a_hash[a], b_hash[b]]
  end

  result
end

def main
  h,w,n = gets.chomp.split(' ').map(&:to_i)
  abs = []
  n.times { abs << gets.chomp.split(' ').map(&:to_i) }

  result = ans(h,w,n, abs)
  result.each do |x|
    puts x.join(" ")
  end
end

main
