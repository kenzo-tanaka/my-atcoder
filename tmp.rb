require 'minitest/autorun'

def ans(s:)
  array = %w[H 2B 3B HR]
  return "Yes" if array.all? { |x| s.include? x }

  "No"
end

def main
  s = []
  4.times { s << gets.chomp }
  print ans(s: s)
end

class SampleTest < Minitest::Test
  def test_1
    expected = "Yes"
    actual = ans(s: %w[3B HR 2B H])
    assert_equal expected, actual
  end
  def test_2
    expected = "No"
    actual = ans(s: %w[2B 3B HR 3B])
    assert_equal expected, actual
  end
end
