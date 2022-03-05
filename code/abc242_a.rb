def ans(a,b,c,x)
  return 1 if x <= a

  num = b - (a+1)
  return 0 if num == 0

  c.to_f / num.to_f
end

def main
  a,b,c,x = gets.chomp.split(' ').map(&:to_i)
  print ans(a,b,c,x)
end

main
