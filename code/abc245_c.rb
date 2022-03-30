n, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

def range_array(val, gap)
  mi = [val - gap, 0].max
  mx = val + gap
  [mi,mx]
end

def include?(val, array)
  array[0] <= val && array[1] >= val
end

flag = true
ranges = []

n.times do |i|
  aa, bb = a[i], b[i]

  # 初期値として範囲をセット
  if i == 0
    a_range, b_range = range_array(aa, k), range_array(bb, k)
    ranges = [a_range, b_range]
    next
  else
    # aa, bb どちらも範囲にない場合はloopを抜ける
    if ranges.any? { |range| include?(aa, range) || include?(bb,range) } == false
      flag = false
      break
    end

    # 新しい範囲を作成
    # 重複が発生しないようにする
    tmp = []
    ranges.each do |range|
      a_range = range_array(aa, k)
      tmp << a_range if include?(aa, range) && !tmp.include?(a_range)

      b_range = range_array(bb, k)
      tmp << range_array(bb, k) if include?(bb, range) && !tmp.include?(b_range)
    end

    ranges = tmp
  end
end

puts flag ? "Yes" : "No"
