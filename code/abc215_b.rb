n = gets.chomp.to_i

# n = 10 ** 18
# Math.log(n, 2) -> 59
# なので、10 ** 18 < 2 ** 60 くらいとわかる
# 2 ** k <= N 

result = 0
for i in 0..60 do
    if (2 ** i <= n)
        next
    else
        result = i - 1
        break
    end
end

print result
