require 'minitest/autorun'
require_relative '../abc196_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 3
    actual = ans 33
    assert_equal expected, actual
  end

  def test_2
    expected = true
    actual = true
    assert_equal expected, actual
  end
end
