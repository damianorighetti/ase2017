require 'rspec'
require './sum'

# Given I have an array of three integers
# When I call the method sum
# Then I see the sum of the three integers
#
#


RSpec.describe '#sum' do
  context "with an array of integers" do
    it "returns the sum of the integers" do
      expect(sum([1, 1, 1])).to eq(3)
    end
  end

  context "when the array is empty" do
    it "returns 0" do
      expect(sum([])).to eq(0)
    end
  end

  context "when the array contains other types" do
    it "raises an error" do
      expect { sum([1, 3, "pippo", 42, nil]) }.to raise_error
    end
  end
end
