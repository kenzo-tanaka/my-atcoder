a = [100,100,200]

17.times do |i|
  a << a[i] + a[i+1] + a[i+2]
end

p a.last
