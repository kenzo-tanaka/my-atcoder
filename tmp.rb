a = [100,100,200]

17.times do |i|
  x = a[i] + a[i+1] + a[i+2]
  a << x
end

p a.last
