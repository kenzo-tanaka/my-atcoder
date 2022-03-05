require 'minitest/autorun'
require_relative '../abc242_a'

class SampleTest < Minitest::Test
  def test_1
    expected = 0.042553191489
    actual = ans(30,500,20,103)
    assert_equal expected, actual
  end

  def test_2
    expected = 1.000
    actual = ans(50, 500, 100, 1)
    assert_equal expected, actual
  end

  def test_3
    expected = 0.0000
    actual = ans(1, 2, 1, 1000)
    assert_equal expected, actual
  end
end
