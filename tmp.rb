require 'minitest/autorun'

def ans(n,k,c)
  hash = Hash.new
  c.each { |x| hash[x.to_s] = 0 }

  max = 0
  kind = 0

  n.times do |i|
    kind += 1 if hash[c[i].to_s] == 0
    hash[c[i].to_s] += 1

    if i >= k
      hash[c[i-k].to_s] -= 1
      kind -= 1 if hash[c[i-k].to_s] == 0
    end

    max = [max, kind].max
  end

  max
end

def main
  n, k = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)
  print ans(n,k,c)
end

main

class SampleTest < Minitest::Test
  def test_1
    expected = 3
    actual = ans(7,3,%w[1 2 1 2 3 3 1])
    assert_equal expected, actual
  end

  def test_2
    expected = 1
    actual = ans(5,5,%w[4 4 4 4 4])
    assert_equal expected, actual
  end

  def test_3
    expected = 4
    actual = ans(10,6,%w[304621362 506696497 304621362 506696497 834022578 304621362 414720753 304621362 304621362 414720753])
    assert_equal expected, actual
  end
end
