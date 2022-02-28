require 'minitest/autorun'
require_relative '../abc210_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 3
    actual = ans(n: 7, k: 3, c: [1,2,1,2,3,3,1])
    assert_equal expected, actual
  end

  def test_2
    expected = 1
    actual = ans(n: 5, k: 5, c: [4,4,4,4,4])
    assert_equal expected, actual
  end

  def test_3
    expected = 4
    actual = ans(n: 10, k: 6, c: %w[304621362 506696497 304621362 506696497 834022578 304621362 414720753 304621362 304621362 414720753])
    assert_equal expected, actual
  end
end
