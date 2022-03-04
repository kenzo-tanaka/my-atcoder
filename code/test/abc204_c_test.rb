require 'minitest/autorun'
require_relative '../abc204_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 7
    actual = ans(3,3,[[1,2], [2,3], [3,2]])
    assert_equal expected, actual
  end

  def test_2
    expected = 3
    actual = ans(3,0,[])
    assert_equal expected, actual
  end

  def test_3
    expected = 16
    actual = ans(4,4,[[1,2], [2,3], [3,4], [4,1]])
    assert_equal expected, actual
  end
end
