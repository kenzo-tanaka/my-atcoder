require 'minitest/autorun'
require_relative '../abc204_c'

class SampleTest < Minitest::Test
  def test_1
    expected = 7
    instance = Dfs.new(3,3,[[1,2], [2,3], [3,2]])
    actual = instance.ans
    assert_equal expected, actual
  end

  def test_2
    expected = 3
    instance = Dfs.new(3,0,[])
    actual = instance.ans
    assert_equal expected, actual
  end

  def test_3
    expected = 16
    instance = Dfs.new(4,4,[[1,2], [2,3], [3,4], [4,1]])
    actual = instance.ans
    assert_equal expected, actual
  end
end
