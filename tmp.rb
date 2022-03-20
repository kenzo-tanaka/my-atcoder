n = gets.chomp.to_i
t = gets.chomp.split('')


def change_head(head)
  return "南" if head == "東"
  return "西" if head == "南"
  return "北" if head == "西"

  "東"
end

def change_xy(head, xy)
  if head == "東"
    xy[0] += 1
  elsif head == "西"
    xy[0] -= 1
  elsif head == "北"
    xy[1] += 1
  elsif head == "南"
    xy[1] -= 1
  end

  xy
end

head = "東"
xy = [0,0]

t.each do |tt|
  if tt == "R"
    head = change_head(head)
  else
    xy = change_xy(head, xy)
  end
end

puts "#{xy[0]} #{xy[1]}"
