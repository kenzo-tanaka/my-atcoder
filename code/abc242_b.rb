def ans(s)
  tmp = s.split('')
  tmp.sort!
  tmp.join('')
end

def main
  s = gets.chomp
  print ans(s)
end

main
