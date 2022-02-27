def answer(s)
   return "Yes" if s.sort == ["2B", "3B", "H", "HR"]

   "No"
end

def main
    s=[]
    4.times do
        s << gets.chomp
    end
    answer(s)
end