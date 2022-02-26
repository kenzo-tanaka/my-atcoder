require 'minitest/autorun'

def answer(h, w, n, abs)
   a = []
   b = []
   abs.each do |ab|
      a << ab[0]
      b << ab[1]
   end
   a_hash = build_hash(a)
   b_hash = build_hash(b)

   result = []
   abs.each do |ab|
      x = a_hash[ab[0].to_s] 
      y = b_hash[ab[1].to_s] 
      result << [x,y]
   end
   result
end

def build_hash(array)
   hash = {}
   array.uniq.sort.each_with_index do |x,index|
      hash[x.to_s] = index + 1
   end
   hash
end

class SampleTest < Minitest::Test
   def test_1
      assert_equal answer(4,5,2, [[3,2], [2,5]]), [[2,1], [1,2]]
   end
end

# a = Aだけを取得した配列
# 4 5 2
# 2 5
# 3 2 
# 2行目5列目
# 3行目2列目
# 1行目には何も数字がないことがわかる
# 4行目も何も数字がないことがわかる
# 1,3,4列目も数字がないことがわかる