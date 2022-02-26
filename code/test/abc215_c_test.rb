require 'minitest/autorun'
require_relative '../abc215_c.rb'

class SampleTest < Minitest::Test
    def test_1
        expected = "aba"
        actual = answer(s: "aab", k: 2)
        assert_equal expected, actual
    end

    def test_2
        expected = true
        actual = true
        assert_equal expected, actual
    end
end