require_relative '../score_avg'
RSpec.describe "hcap calc" do
  it 'finds the average and returns it with precision' do
    expect(score_avg([1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21])).to eq(10.85)
    expect(score_avg([97, 90, 94, 99, 99])).to eq(95.8)
    expect(score_avg([78, 77, 84, 79, 74])).to eq(78.4)
  end
end