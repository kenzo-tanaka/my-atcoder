require 'minitest/autorun'

def ans(n,k,a)
  result = Array.new(n, default = k/n)
  tmp = []
  a.each_with_index { |x,idx| tmp << [x,idx] }
  tmp.sort!

  # 残りのk個
  k %= n
  k.times do |i|
    idx = tmp[i][1]
    result[idx] += 1
  end

  result
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)
  puts ans(n,k,a)
end

main

class SampleTest < Minitest::Test
  def test_1
    expected = [4,3]
    actual = ans(2,7,[1,8])
    assert_equal expected, actual
  end

  def test_2
    expected = [3]
    actual = ans(1,3,[33])
    assert_equal expected, actual
  end

  def test_3
    expected = %w[
      142857142857
      142857142857
      142857142858
      142857142857
      142857142857
      142857142857
      142857142857
    ].map(&:to_i)
    actual = ans(7,1000000000000,%w[99 8 2 4 43 5 3])
    assert_equal expected, actual
  end
end
