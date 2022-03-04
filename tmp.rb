require 'minitest/autorun'

def ans(s:, t:)
  time = s+1
  result = 0
  time.times do |a|
    (time - a).times do |b|
      (time - a - b).times do |c|
        result += 1 if a+b+c <= s && a*b*c <=t
      end
    end
  end
  result
end

def main
  s,t = gets.chomp.split(' ').map(&:to_i)
  print ans(s:s,t:t)
end

main

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
  def test_3
    expected = 2471
    actual = ans(s: 30, t: 100)
    assert_equal expected, actual
  end
end
