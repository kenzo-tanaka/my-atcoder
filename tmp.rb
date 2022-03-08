def ans(a,b,c,x)
  return 1.0 if x <= a
  return 0 if x > b

  c.to_f / (b - a).to_f
end

def main
  a,b,c,x = gets.chomp.split(' ').map(&:to_i)
  print ans(a,b,c,x)
end

main
