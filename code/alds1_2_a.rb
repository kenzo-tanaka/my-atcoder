def answer(array)
    n = array.length
    tmp = array.dup
    counter = 0

    for i in (0..(n-1))
        j = n - 1
        while j >= i+1
            if tmp[j] < tmp[j-1]
                pre = tmp[j-1]
                nex = tmp[j]
                tmp[j-1] = nex
                tmp[j] = pre
                counter += 1
            end
            j -= 1
        end
    end
    [tmp, counter]
end

def main
    n = gets.chomp.to_i
    a = gets.chomp.split(' ').map(&:to_i)
    answer(a)
end

array, counter = main
puts array.join(' ')
puts counter
