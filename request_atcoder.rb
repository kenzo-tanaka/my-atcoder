require 'uri'
require 'net/http'

uri = URI('https://kenkoooo.com/atcoder/atcoder-api/v3/user/submissions?user=kenzo1995&from_second=1645868486')
res = Net::HTTP.get_response(uri)

puts res.body
