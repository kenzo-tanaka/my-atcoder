require 'minitest/autorun'
require_relative '../abc211_b'

class SampleTest < Minitest::Test
    def test_1
        expected = "Yes"
        actual = answer(["3B", "HR", "2B", "H"])
        assert_equal expected, actual
    end

    def test_2
        expected = "No"
        array = %w[2B 3B HR 3B]
        actual = answer(array)
        assert_equal expected, actual
    end
end