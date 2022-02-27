require 'minitest/autorun'
require_relative '../abc211_c'

class SampleTest < Minitest::Test
    def test_1
        expected = 3
        actual = answer("chchokudai")
        assert_equal expected, actual
    end

    def test_2
        expected = 0
        actual = answer("atcoderrr")
        assert_equal expected, actual
    end
end