require 'date'
require 'json'
require 'uri'
require 'net/http'

class RequestAtcoder
  def self.get_body(date:)
    unixtime = date.to_time.to_i
    uri = URI("https://kenkoooo.com/atcoder/atcoder-api/v3/user/submissions?user=kenzo1995&from_second=#{unixtime}")
    res = Net::HTTP.get_response(uri)
    res.body
  end

  def self.get_problems
    yesterday = Date.today - 1
    today = Date.today
    JSON.parse(get_body(date: yesterday)) - JSON.parse(get_body(date: today))
  end
end
