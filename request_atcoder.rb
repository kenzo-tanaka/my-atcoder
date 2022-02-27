require 'date'
require 'json'
require 'uri'
require 'net/http'

class RequestAtcoder
  def self.get_problems(date:)
    prev_day = date
    next_day = date + 1
    JSON.parse(get_body(date: prev_day)) - JSON.parse(get_body(date: next_day))
  end

  def self.get_body(date:)
    unixtime = date.to_time.to_i
    uri = URI("https://kenkoooo.com/atcoder/atcoder-api/v3/user/submissions?user=kenzo1995&from_second=#{unixtime}")
    res = Net::HTTP.get_response(uri)
    res.body
  end

  def self.yesterday_report
    print get_problems(date: Date.today - 1).to_json
  end

  def self.one_week_ago_report
    print get_problems(date: Date.today - 7).to_json
  end

  def self.one_month_ago_report
    print get_problems(date: Date.today - 30).to_json
  end
end
