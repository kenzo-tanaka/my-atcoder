require 'minitest/autorun'

def ans(h,w,n,abs)
  as = []
  bs = []
  abs.each_with_index { |ab, idx| as[idx], bs[idx] = ab[0], ab[1] }

  a_hash = {}
  b_hash = {}
  as.uniq.sort.each_with_index do |x,idx|
    a_hash[x.to_s] = idx + 1
  end
  bs.uniq.sort.each_with_index do |x,idx|
    b_hash[x.to_s] = idx + 1
  end

  result = []
  n.times do |i|
    a = a_hash[as[i].to_s]
    b = b_hash[bs[i].to_s]

    result << [a,b]
  end

  result
end

def main
  h,w, n = gets.chomp.split(' ').map(&:to_i)
  abs = []
  n.times { abs << gets.chomp.split(' ').map(&:to_i) }

  result = ans(h,w,n,abs)

  result.each do |x|
    puts "#{x[0]} #{x[1]}"
  end
end

main

# class SampleTest < Minitest::Test
#   def test_1
#     expected = [[2,1], [1,2]]
#     actual = ans(4,5,2,[[3,2], [2,5]])
#     assert_equal expected, actual
#   end
#
#   def test_2
#     expected = true
#     actual = true
#     assert_equal expected, actual
#   end
# end
