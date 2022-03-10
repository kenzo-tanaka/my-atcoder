require 'minitest/autorun'
require_relative '../abc203_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 4
    actual = ans(2,3,[[2,1], [5,10]])
    assert_equal expected, actual
  end

  def test_2
    expected = 6000000000
    actual = ans(5, 1000000000, [
      [1,1000000000],
      [2,1000000000],
      [3,1000000000],
      [4,1000000000],
      [5,1000000000],
    ])
    assert_equal expected, actual
  end
end
