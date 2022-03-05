require 'minitest/autorun'
require_relative '../abc242_b'

class SampleTest < Minitest::Test
  def test_1
    expected = 'aab'
    actual = ans('aba')
    assert_equal expected, actual
  end

  def test_2
    expected = true
    actual = true
    assert_equal expected, actual
  end
end
