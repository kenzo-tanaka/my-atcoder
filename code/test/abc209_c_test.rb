require 'minitest/autorun'
require_relative '../abc209_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 2
    actual = ans(2,[1,3])
    assert_equal expected, actual
  end

  def test_2
    expected = 12
    actual = ans(4,[3,3,4,4])
    assert_equal expected, actual
  end

  def test_3
    expected = 405924645
    actual = ans(10, %w[999999917 999999914 999999923 999999985 999999907 999999965 999999914 999999908 999999951 999999979].map(&:to_i))
    assert_equal expected, actual
  end
end
