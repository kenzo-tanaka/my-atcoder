require 'minitest/autorun'
require_relative '../alds1_2_a'

class SampleTest < Minitest::Test
    def test_1
        expected = [[1,2,3,4,5], 8]
        actual = answer([5,3,2,4,1], 5)
        assert_equal expected, actual
    end

    def test_2
        expected = [[1,2,3,4,5,6], 9]
        actual = answer([5,2,4,6,1,3], 6)
        assert_equal expected, actual
    end
end
