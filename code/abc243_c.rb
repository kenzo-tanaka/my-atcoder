n = gets.chomp.to_i
xy = []
n.times { xy << gets.chomp.split(' ').map(&:to_i) }
s = gets.chomp
arr = s.split('')

hash = {}
result = "No"
arr.each_with_index do |element,idx|
  x, y = xy[idx][0], xy[idx][1]

  if hash[y].nil?
    # [x座標, 向き"R or L"]
    hash[y] = [x, element]
  elsif hash[y] != element
    result = "Yes"
    break
  else
  end
end

puts result
