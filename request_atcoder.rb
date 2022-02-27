require 'date'
require 'uri'
require 'net/http'

class RequestAtcoder
  def self.get_body
    yesterday = Date.today - 1
    one_week_ago = Date.today - 7
    one_month_ago = Date.today - 30

    unixtime = yesterday.to_time.to_i
    uri = URI("https://kenkoooo.com/atcoder/atcoder-api/v3/user/submissions?user=kenzo1995&from_second=#{unixtime}")
    res = Net::HTTP.get_response(uri)
    res.body
  end

  def self.get_problems
    [{"id"=>29647312, "epoch_second"=>1645839697, "problem_id"=>"abc212_a", "contest_id"=>"abc212", "user_id"=>"kenzo1995", "language"=>"Ruby (2.7.1)", "point"=>0.0, "length"=>168, "result"=>"WA", "execution_time"=>58}, {"id"=>29647333, "epoch_second"=>1645839752, "problem_id"=>"abc212_a", "contest_id"=>"abc212", "user_id"=>"kenzo1995", "language"=>"Ruby (2.7.1)", "point"=>100.0, "length"=>173, "result"=>"AC", "execution_time"=>60}, {"id"=>29647587, "epoch_second"=>1645840892, "problem_id"=>"abc212_b", "contest_id"=>"abc212", "user_id"=>"kenzo1995", "language"=>"Ruby (2.7.1)", "point"=>200.0, "length"=>419, "result"=>"AC", "execution_time"=>61}, {"id"=>29649518, "epoch_second"=>1645848178, "problem_id"=>"abc213_c", "contest_id"=>"abc213", "user_id"=>"kenzo1995", "language"=>"Ruby (2.7.1)", "point"=>0.0, "length"=>648, "result"=>"WA", "execution_time"=>505}, {"id"=>29653650, "epoch_second"=>1645860106, "problem_id"=>"abc213_c", "contest_id"=>"abc213", "user_id"=>"kenzo1995", "language"=>"Ruby (2.7.1)", "point"=>300.0, "length"=>653, "result"=>"AC", "execution_time"=>523}]
  end
end
