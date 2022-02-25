s,t = gets.chomp.split('').map(&:to_i)

# TODO: なぜs+1まで見る必要があるのかわかっていない
count = 0
for i in (0..(s+1))
    for j in (0..(s+1))
        for k in (0..(s+1))
            if (i+j+k) <= s && (i*j*k) <= t
                count +=1
                print [i,j,k]
            end
        end
    end
end
puts count
