require 'minitest/autorun'
require_relative '../abc200_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 4
    actual = ans(6, %w[123 223 123 523 200 2000].map(&:to_i))
    assert_equal expected, actual
  end

  def test_2
    expected = true
    actual = true
    assert_equal expected, actual
  end
end
