require 'minitest/autorun'

def ans(s:, t:)
  counter = 0
  (s+1).times do |a|
    (s+1).times do |b|
      (s+1).times do |c|
        if a + b + c <=s && a * b * c <= t
          counter += 1
        end
      end
    end
  end

  counter
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
    expected = 2471
    actual = ans(s: 30, t: 100)
    assert_equal expected, actual
  end
end
