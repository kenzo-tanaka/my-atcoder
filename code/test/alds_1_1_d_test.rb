require 'minitest/autorun'
require_relative '../alds_1_1_d'

class SampleTest < Minitest::Test
    def test_1
        expected = 3
        actual = answer(n: 6, r: [5,3,1,3,4,3])
        assert_equal expected, actual
    end

    # def test_2
    #     expected = true
    #     actual = true
    #     assert_equal expected, actual
    # end
end