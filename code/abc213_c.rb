require 'minitest/autorun'

def answer(h, w, n, abs)
   print abs
   [[2,1], [1,2]]
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