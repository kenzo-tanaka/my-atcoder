def ans(n)
  j = 1
  while f(j) <= n
    j += 1
  end
  j - 1
end

def f(j)
  (j.to_s * 2).to_i
end

def main
  n = gets.chomp.to_i
  pp ans n
end

main
