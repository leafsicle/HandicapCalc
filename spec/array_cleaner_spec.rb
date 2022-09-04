require_relative '../array_cleaner'
RSpec.describe "array validator" do
  it "checks that the array has the right number of things in it to calc a score" do
    expect(array_cleaner([1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21])).to eq([13,15,16,17,18,19,20,21])
    expect(array_cleaner([1,2,3,4,5,6,7,8])).to eq([1,2,3,4,5,6,7,8])
  end
  it "has 3 or more scores" do
    expect(array_cleaner([1,2])).to eq([])
  end
end
