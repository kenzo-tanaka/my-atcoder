require 'minitest/autorun'
require_relative '../abc210_c'

class SampleTest < Minitest::Test
    def test_1
        expected = 3
        actual = ans(n: 7, k: 3, c: [1,2,1,2,3,3,1])
        assert_equal expected, actual
    end

    # def test_2
    #     expected = true
    #     actual = true
    #     assert_equal expected, actual
    # end
end
