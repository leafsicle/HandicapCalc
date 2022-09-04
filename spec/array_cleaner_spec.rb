require_relative '../array_cleaner'
longScoreArr = [1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21]
medScoreArr = [1,2,3,4,5,6,7,8]
longScoreArr = [1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21]
RSpec.describe "validates array_cleaner output" do
  it "returns correct array for 20+ scores" do
    expect(array_cleaner(longScoreArr)).to eq([13,15,16,17,18,19,20,21])
  end
  it "has fewer than 3 scores" do
    expect(array_cleaner([1,2])).to eq([])
  end
  it "returns the array if it has 3..20 scores in it" do
    expect(array_cleaner(medScoreArr)).to eq([1,2,3,4,5,6,7,8])
  end
end
