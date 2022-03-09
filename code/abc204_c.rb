class Dfs
  def initialize(n,m,abs)
    @n = n
    @m = m
    @abs = abs
    @graph = Array.new(n, default = [])
  end

  def dfs(v, flg)
    return if flg[v]

    flg[v] = true
    @graph[v].each { |vv| dfs(vv, flg) }
  end

  def build_graph
    # 直接繋がっている都市リスト作成
    @abs.each { |ab| @graph[ab[0]-1] << ab[1]-1 }
  end

  def ans
    build_graph
    answer = 0
    flg = [] * @n
    @n.times do |i|
      @n.times { |j| flg[j] = false }
      dfs(i, flg)
      @n.times { |j| answer +=1 if flg[j] }
    end

    answer
  end
end

def main
  n, m = gets.chomp.split(' ').map(&:to_i)
  abs = []
  m.times { abs << gets.chomp.split(' ').map(&:to_i) }

  print Dfs.new(n,m,abs).ans
end

main
