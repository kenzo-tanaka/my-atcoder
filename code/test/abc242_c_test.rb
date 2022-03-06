require 'minitest/autorun'
require_relative '../abc242_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 203
    actual = ans(4)
    assert_equal expected, actual
  end

  def test_2
    expected = 25
    actual = ans(2)
    assert_equal expected, actual
  end

  def test_3
    expected = 248860093
    actual = ans(1000000)
    assert_equal expected, actual
  end
end
