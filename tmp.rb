require 'minitest/autorun'

def ans(s:, t:)
  count = 0
  time = s + 1
  time.times do |a|
    time.times do |b|
      time.times do |c|
        count += 1 if a + b + c <= s && a * b * c <= t
      end
    end
  end

  count
end

def main
  s,t = gets.chomp.split(' ').map(&:to_i)
  print ans(s: s, t: t)
end

class SampleTest < Minitest::Test
  def test_1
    expected = 4
    actual = ans(s: 1, t: 0)
    assert_equal expected, actual
  end
  def test_2
    expected = 213
    actual = ans(s: 10, t: 10)
    assert_equal expected, actual
  end
end
