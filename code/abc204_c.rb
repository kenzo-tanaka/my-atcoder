TMP=Array.new(2000, default = false)
G = Array.new(2000, default = [])

def dfs(v)
  return TMP[v] if TMP[v]

  TMP[v] = true
  for vv in G[v]
    dfs(vv)
  end
end

def ans(n,m,abs)
  # 直接繋がっている都市リスト作成
  abs.each do |ab|
    a,b = ab[0], ab[1]
    G[a-1] << b-1
  end

  result = 0
  n.times do |i|
    TMP.length.times do |i|
      TMP[i] = false
    end

    dfs(i)
    result += TMP.count { |x| x == true }
  end

  result
end
