def ans(h,w,n,abs)
  a,b = [], []
  abs.each_with_index { |ab,idx| a[idx], b[idx] = ab[0], ab[1] }

  tmp_a, tmp_b = {}, {}
  a.uniq.sort.each_with_index { |x,idx| tmp_a[x] = idx + 1 }
  b.uniq.sort.each_with_index { |x,idx| tmp_b[x] = idx + 1 }

  result = []
  abs.each do |ab|
    result << [ tmp_a[ab[0]], tmp_b[ab[1]] ]
  end

  result
end

def main
  h,w,n = gets.chomp.split(' ').map(&:to_i)
  abs = []
  n.times { abs << gets.chomp.split(' ').map(&:to_i) }
  result = ans(h,w,n,abs)

  result.each do |x|
    puts x.join ' '
  end
end

main
