require 'minitest/autorun'
require_relative '../alds_1_1_d'

class SampleTest < Minitest::Test
    def test_1
        expected = 3
        actual = answer(n: 6, r: [5,3,1,3,4,3])
        assert_equal expected, actual
    end

    def test_2
        expected = -1
        actual = answer(n: 3, r: [4,3,2])
        assert_equal expected, actual
    end

    def test_3
        expected = -999999999
        actual = answer(n: 2, r: [1000000000, 1])
        assert_equal expected, actual
    end
end