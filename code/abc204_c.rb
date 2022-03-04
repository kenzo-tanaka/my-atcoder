def ans(n,m,abs)
  a_array = []
  b_array = []

  routes = []

  # (1,1)などがあるので、Nを初期値とする
  result = n
  m.times do |i|
    ab = abs[i]
    a,b = ab[0], ab[1]
    a_array << a
    b_array << b

    unless routes.include? ab
      routes << ab
      result += 1
    end

    if b_array.include? a
      idx = b_array.index(a)
      start_point = a_array[idx]
      end_point = b

      unless start_point != end_point
        routes << [start_point, end_point]
        result += 1
      end
    end
  end

  print routes

  result
end
