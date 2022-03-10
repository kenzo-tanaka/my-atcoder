def ans(n, tlr_s)
  l_s = []
  r_s = []

  tlr_s.each do |tlr|
    t = tlr[0]

    # 全て閉区間にする
    l = tlr[1] * 2
    r = tlr[2] * 2
    l += 1 if t == 3 || t == 4
    r -= 1 if t == 2 || t == 4
    l_s << l
    r_s << r
  end

  result = 0
  n.times do |i|
    (i+1...n).each do |j|
      result += 1 if [l_s[i], l_s[j]].max <= [r_s[j], r_s[i]].min
    end
  end

  result
end

def main
  n = gets.chomp.to_i
  tlr_s = []
  n.times { tlr_s << gets.chomp.split(' ').map(&:to_i) }

  puts ans(n, tlr_s)
end

main
