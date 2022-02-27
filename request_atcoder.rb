require 'date'
require 'uri'
require 'net/http'

yesterday = Date.today - 1
one_week_ago = Date.today - 7
one_month_ago = Date.today - 30

def get_body(date:)
    unixtime = date.to_time.to_i
    uri = URI("https://kenkoooo.com/atcoder/atcoder-api/v3/user/submissions?user=kenzo1995&from_second=#{unixtime}")
    res = Net::HTTP.get_response(uri)
    res.body
end
