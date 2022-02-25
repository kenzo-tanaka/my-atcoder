s,t = gets.chomp.split(' ').map(&:to_i)

count = 0
for i in (0..(s))
    for j in (0..(s))
        for k in (0..(s))
            if (i+j+k) <= s && (i*j*k) <= t
                count +=1
            end
        end
    end
end
puts count
