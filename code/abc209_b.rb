def ans(n:, x:, a:)
  new_array = a.clone
  new_array.each_with_index do |e, i|
    if (i+1) % 2 == 0
      new_array[i] = e - 1
    end
  end

  new_array.sum <= x ? "Yes" : "No"
end

def main
  n, x = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)
  print ans(n:n, x:x, a:a)
end

main
