h,w,n = gets.chomp.split(' ').map(&:to_i)
ab = []
n.times { ab << gets.chomp.split(' ').map(&:to_i) }

a, b = [], []
n.times { |i| a[i], b[i] = ab[i][0], ab[i][1] }


def build_hash(array)
  hash = {}
  array.sort.uniq.each_with_index do |x, idx|
    hash[x] = idx + 1
  end

  hash
end

a_hash, b_hash = build_hash(a), build_hash(b)
n.times do |i|
  puts "#{a_hash[a[i]]} #{b_hash[b[i]]}"
end
