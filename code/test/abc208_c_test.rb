require 'minitest/autorun'
require_relative '../abc208_c'

class SampleTest < Minitest::Test
  def test_1
    expected = [4,3]
    actual = ans(n: 2, k: 7, a: [1,8])
    assert_equal expected, actual
  end

  def test_2
    expected = [3]
    actual = ans(n: 1, k: 3, a: [33])
    assert_equal expected, actual
  end
end
