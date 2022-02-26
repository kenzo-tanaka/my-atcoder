def answer(n:, r:)
    min = r[0]
    max = -10**9
    (1..(n-1)).each do |n|
        x = r[n]
        max = [max, x - min].max
        min = [min, x].min
    end
    max
end

def main
    n = gets.chomp.to_i
    r = []
    n.times do
        r << gets.chomp.to_i
    end
    print answer(n: n, r: r)
end
