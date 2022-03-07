F = Array.new(44)

def fib(n)
  return 1 if n == 0
  return 1 if n == 1
  return F[n] unless F[n].nil?

  F[n] = fib(n-2) + fib(n-1)
  F[n]
end

def main
  n = gets.chomp.to_i
  print fib(n)
end

main

require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_1
    expected = 3
    actual = fib(3)
    assert_equal expected, actual
  end

  def test_1
    expected = 3
    actual = fib(44)
    assert_equal expected, actual
  end
end
