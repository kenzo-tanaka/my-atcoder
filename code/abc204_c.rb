# TMP = Array.new(2000, default = false)
class Dfs
  def initialize(n,m,abs)
    @n = n
    @m = m
    @abs = abs
    @graph = Array.new(n, default = [])
    @tmp = Array.new(n, default = false)
  end

  def tmp_reset
    @n.times { |i| @tmp[i] = false }
  end

  def dfs(v)
    return if @tmp[v]

    @tmp[v] = true
    @graph[v].each { |vv| dfs(vv) }
  end

  def build_graph
    # 直接繋がっている都市リスト作成
    @abs.each { |ab| @graph[ab[0]-1] << ab[1]-1 }
  end

  def ans
    build_graph
    result = 0
    @n.times do |i|
      tmp_reset
      dfs(i)
      result += @tmp.count { |x| x }
    end

    result
  end
end

def main
  n, m = gets.chomp.split(' ').map(&:to_i)
  abs = []
  m.times { abs << gets.chomp.split(' ').map(&:to_i) }

  print Dfs.new(n,m,abs).ans
end

main
