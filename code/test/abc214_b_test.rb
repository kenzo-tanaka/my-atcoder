require 'minitest/autorun'
require_relative '../abc214_b'

class SampleTest < Minitest::Test
    def test_1
        assert_equal 4, answer(s:1, t: 2)
    end
    def test_2
        assert_equal 10, answer(s:2, t: 5)
    end
end