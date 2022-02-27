require 'minitest/autorun'
require_relative '../alds1_2_a'

class SampleTest < Minitest::Test
    def test_1
        expected = [[1,2,3,4,5], 8]
        actual = answer([5,3,2,4,1])
        assert_equal expected, actual
    end

    # def test_2
    #     expected = true
    #     actual = true
    #     assert_equal expected, actual
    # end
end