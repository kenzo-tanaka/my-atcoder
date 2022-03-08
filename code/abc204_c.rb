def ans(n,m,abs)
  graph = Array.new(n, default = [])
  # 直接繋がっている都市リスト作成
  abs.each do |ab|
    a,b = ab[0], ab[1]
    graph[a-1] << b-1
  end

  7
end
