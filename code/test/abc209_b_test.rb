require 'minitest/autorun'
require_relative '../abc209_b'

class SampleTest < Minitest::Test
    def test_1
        expected = "Yes"
        actual = ans(n: 2, x: 3, a: [1, 3])
        assert_equal expected, actual
    end

    def test_2
        expected = "Yes"
        actual = ans(n: 8, x: 30, a: [3, 1, 4, 1, 5, 9, 2, 6])
        assert_equal expected, actual
    end
end
