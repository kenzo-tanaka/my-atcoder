TMP = Array.new(2000, default = false)
G = Array.new(2000, default = [])

def dfs(v)
  return TMP[v] if TMP[v]

  TMP[v] = true
  G[v].each { |vv| dfs(vv) }
end

def tmp_reset
  TMP.length.times { |i| TMP[i] = false }
end

def ans(n,m,abs)
  # 直接繋がっている都市リスト作成
  abs.each do |ab|
    a,b = ab[0], ab[1]
    G[a-1] << b-1
  end

  result = 0
  n.times do |i|
    tmp_reset
    dfs(i)
    result += TMP.count { |x| x }
  end

  result
end

# def main
#   n, m = gets.chomp.split(' ').map(&:to_i)
#   abs = []
#   m.times { abs << gets.chomp.split(' ').map(&:to_i) }
#
#   print ans(n,m,abs)
# end
#
# main
