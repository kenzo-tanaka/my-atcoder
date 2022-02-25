h,w,n = gets.chomp.split(' ').map(&:to_i)
ab = []
n.times do
   ab << gets.chomp.split(' ').map(&:to_i) 
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

# 2 5
# 3 2 