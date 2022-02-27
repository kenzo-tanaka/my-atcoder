def answer(array)
    n = array.length
    counter = 0

    for i in (0..(n-1))
        j = n - 1
        while j >= i+1
            j -= 1
        end
    end
    # TODO: array[j] < array[j-1] であれば、順番の入れ替えをする
    expected = [[1,2,3,4,5], 8]
end