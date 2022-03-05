def ans(a,b,c,x)
  return 1.000000000000 if x <= a
  return 0 if x > b

  num = b - a
  c.to_f / num.to_f
end

def main
  a,b,c,x = gets.chomp.split(' ').map(&:to_i)
  print ans(a,b,c,x)
end

main
