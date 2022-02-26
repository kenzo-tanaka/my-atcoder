require 'minitest/autorun'

def answer(a, b)
    true
end

class SampleTest < Minitest::Test
    def test_answer
        a = 50
        b = 50
        assert_equal answer(a,b), true
    end
end