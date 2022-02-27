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
    [[1,2,3,4,5], counter]
end