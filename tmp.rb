require 'minitest/autorun'

def ans(n:, k:, c:)
  # build hash
  hash = Hash.new
  c.each { |x| hash[x.to_s] = 0 }

  kind = 0
  max = 1

  # check kind, max
  n.times do |i|
    kind += 1 if hash[c[i].to_s] == 0
    hash[c[i].to_s] += 1

    if (i >= k)
      hash[c[i-k].to_s] -= 1
      kind -= 1 if hash[c[i-k].to_s] == 0
    end

    max = [kind, max].max
  end

  max
end

def main
  n,k = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)

  print ans(n: n, k: k, c: c)
end

class SampleTest < Minitest::Test
  def test_1
    expected = 3
    actual = ans(n: 7, k: 3, c: %w[1 2 1 2 3 3 1])
    assert_equal expected, actual
  end
  def test_3
    expected = 1
    actual = ans(n: 5, k: 5, c: %w[4 4 4 4 4])
    assert_equal expected, actual
  end
  def test_2
    expected = 4
    actual = ans(n: 10, k: 6, c: %w[304621362 506696497 304621362 506696497 834022578 304621362 414720753 304621362 304621362 414720753])
    assert_equal expected, actual
  end
end
