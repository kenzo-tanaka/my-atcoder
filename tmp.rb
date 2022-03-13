def ans(n,k,abs)
  abs.sort!
  result = k
  j = 0

  while j < n && abs[j][0] <= result
    result += abs[j][1]
    j += 1
  end

  result
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  abs = []
  n.times { abs << gets.chomp.split(' ').map(&:to_i) }

  puts ans n,k,abs
end

main

#
# require 'minitest/autorun'
#
# class SampleTest < Minitest::Test
#   def test_1
#     expected = 4
#     actual = ans(2,3, [[2,1], [5,10]])
#     assert_equal expected, actual
#   end
#
#   def test_2
#     expected = true
#     actual = true
#     assert_equal expected, actual
#   end
# end
