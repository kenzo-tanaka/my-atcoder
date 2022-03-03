def ans
  array = [100,100,200]

  17.times do |i|
    x = array[i] + array[i+1] + array[i+2]
    array << x
  end

  p array.last
end

ans
