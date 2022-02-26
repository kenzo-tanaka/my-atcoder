require 'minitest/autorun'

def answer(a, b)
    return 'Gold' if a > 0 && b == 0
    return 'Silver' if a == 0 && b > 0

    'Alloy'
end
a,b = gets.chomp.split(' ').map(&:to_i)
puts answer(a,b)
 

class SampleTest < Minitest::Test
    def test_gold
        a = 1
        b = 0
        assert_equal answer(a,b), 'Gold'
    end

    def test_alloy
        a = 50
        b = 50
        assert_equal answer(a,b), 'Alloy'
    end

    def test_silver
        a = 0
        b = 1
        assert_equal answer(a,b), 'Silver'
    end
end