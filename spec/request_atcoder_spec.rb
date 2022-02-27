require_relative '../request_atcoder'

RSpec.describe 'RequestAtcoder' do
    describe 'get_problems' do
        before do
          body = [{"id":29647312,"epoch_second":1645839697,"problem_id":"abc212_a","contest_id":"abc212","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":0.0,"length":168,"result":"WA","execution_time":58},{"id":29647333,"epoch_second":1645839752,"problem_id":"abc212_a","contest_id":"abc212","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":100.0,"length":173,"result":"AC","execution_time":60},{"id":29647587,"epoch_second":1645840892,"problem_id":"abc212_b","contest_id":"abc212","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":200.0,"length":419,"result":"AC","execution_time":61},{"id":29649518,"epoch_second":1645848178,"problem_id":"abc213_c","contest_id":"abc213","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":0.0,"length":648,"result":"WA","execution_time":505},{"id":29653650,"epoch_second":1645860106,"problem_id":"abc213_c","contest_id":"abc213","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":300.0,"length":653,"result":"AC","execution_time":523},{"id":29726913,"epoch_second":1645929507,"problem_id":"abc211_b","contest_id":"abc211","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":0.0,"length":183,"result":"WA","execution_time":55},{"id":29726943,"epoch_second":1645929585,"problem_id":"abc211_b","contest_id":"abc211","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":200.0,"length":191,"result":"AC","execution_time":68},{"id":29735816,"epoch_second":1645951485,"problem_id":"abc214_b","contest_id":"abc214","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":200.0,"length":310,"result":"AC","execution_time":110},{"id":29735876,"epoch_second":1645951630,"problem_id":"abc214_b","contest_id":"abc214","user_id":"kenzo1995","language":"Ruby (2.7.1)","point":200.0,"length":320,"result":"AC","execution_time":71}]
          allow(RequestAtcoder).to receive(:get_body).and_return(body)
        end

        it do
            expect(true).to eq true
        end
    end
end
