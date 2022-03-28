s = gets.chomp.split ' '
t = gets.chomp.split ' '

def check(s,t)
  left = [["R", "G", "B"], ["B", "R", "G"], ["G", "B", "R"]]
  right = [["R", "B", "G"], ["B", "G", "R"], ["G", "R", "B"]]

  (left.include?(s) && left.include?(t)) || (right.include?(s) && right.include?(t))
end

puts check(s,t) ? "Yes" : "No"
