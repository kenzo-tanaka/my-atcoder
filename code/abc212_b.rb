require 'minitest/autorun'

def answer(x)
    nums = x.split('').map(&:to_i)
    return "Weak" if nums.uniq.length == 1
    return "Weak" if nums[0] + 1 == nums[1] && nums[1] + 1 == nums[2] && nums[2] + 1 == nums[3]

    "Strong"
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
    
    def test_strong
        x = "0112"
        assert_equal answer(x), 'Strong'
    end
end