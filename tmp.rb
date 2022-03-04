def ans(s:)
  %w[H 2B 3B HR].all? { |x| s.include? x } ? "Yes" : "No"
end

def main
  s = []
  4.times { s << gets.chomp }
  print ans(s: s)
end

main
