require_relative '../score_avg'

longScoreArr = [1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21]
RSpec.describe "hcap calc" do
  it 'finds the average and returns it with precision' do
    expect(score_avg(longScoreArr)).to eq(10.85)
    expect(score_avg([97, 90, 94, 99, 99])).to eq(95.8)
    
  end
  it 'returns only a float' do
    expect(score_avg([78, 77, 84, 79, 74])).to be_a Float
    expect(score_avg([78, 77, 84, 79, 74])).not_to be_a Integer
    expect(score_avg([78, 77, 84, 79, 74])).not_to be_a String
  end
end