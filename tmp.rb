require 'minitest/autorun'

def ans(n,as)
  ls = []
  rs = []

  as.each do |a|
    t = a[0]
    l = a[1]
    r = a[2]

    l *= 2
    r *= 2

    if t == 3 || t == 4
      l += 1
    end

    if t ==2 || t == 4
      r -= 1
    end

    ls << l
    rs << r
  end

  cnt = 0
  (0..n).each do |i|
    (i+1...n).each do |j|
      cnt += 1 if [ls[i], ls[j]].max <= [rs[i], rs[j]].min
    end
  end
  cnt
end

class SampleTest < Minitest::Test
  def test_1
    expected = 2
    actual = ans(3, [[1,1,2], [2,2,3], [3,2,4]])
    assert_equal expected, actual
  end

  def test_2
    expected = true
    actual = true
    assert_equal expected, actual
  end
end
