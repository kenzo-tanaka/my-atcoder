h,w,n = gets.chomp.split(' ').map(&:to_i)
a,b = [], []
n.times do
  ab = gets.chomp.split(' ').map(&:to_i)
  a << ab[0]
  b << ab[1]
end

def build_hash(array)
  hash = {}
  array.uniq.sort.each_with_index do |x,idx|
    hash[x] = idx + 1
  end
  hash
end

a_hash = build_hash(a)
b_hash = build_hash(b)

n.times do |i|
  puts "#{a_hash[a[i]]} #{b_hash[b[i]]}"
end


