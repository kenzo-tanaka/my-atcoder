require 'minitest/autorun'
require_relative '../abc200_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 4
    actual = ans(6, %w[123 223 123 523 200 2000].map(&:to_i))
    assert_equal expected, actual
  end

  def test_2
    expected = 0
    actual = ans(5, [1,2,3,4,5])
    assert_equal expected, actual
  end

  def test_3
    expected = 9
    actual = ans(8, %w[199 100 200 400 300 500 600 200].map(&:to_i))
    assert_equal expected, actual
  end
end
