require_relative '../request_atcoder'

RSpec.describe 'RequestAtcoder' do
    describe 'get_problems' do
        before do
            allow(RequestAtcoder).to receive(:get_body).and_return([]) 
        end

        it do
            expect(true).to eq true
        end
    end
end