s = gets.chomp.split(' ')
t = gets.chomp.split(' ')

def enable?(s,t)
  a = [['R', 'G', 'B'], ['B', 'R', 'G'], ['G', 'B', 'R']]
  b = [['R', 'B', 'G'], ['B', 'G', 'R'], ['G', 'R', 'B']]

  (a.include?(s) && a.include?(t)) || (b.include?(s) && b.include?(t))
end

puts enable?(s,t) ? "Yes" : "No"
