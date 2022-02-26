require 'minitest/autorun'

def answer(x)
    nums = x.split('').map(&:to_i)
    return "Weak" if nums.uniq.length == 1
    return "Weak" if nums_seq_check(nums[0], nums[1]) && nums_seq_check(nums[1], nums[2]) && nums_seq_check(nums[2], nums[3])

    "Strong"
end

def nums_seq_check(x,y)
    if x == 9 && y == 0
        true
    elsif x+1 == y
        true
    else
        false
    end
end

class SampleTest < Minitest::Test
    def test_weak
        x = "7777"
        assert_equal answer(x), 'Weak'
    end

    def test_seq_weak
        x = "1234"
        assert_equal answer(x), 'Weak'
    end

    def test_seq_weak_with_nine
        x = "9012"
        assert_equal answer(x), 'Weak'
    end
    
    def test_strong
        x = "0112"
        assert_equal answer(x), 'Strong'
    end
end