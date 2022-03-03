require 'minitest/autorun'
require_relative '../abc207_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 2
    actual = ans([[1,1,2], [2,2,3], [3,2,4]])
    assert_equal expected, actual
  end

  # def test_2
  #   expected = true
  #   actual = true
  #   assert_equal expected, actual
  # end
end
