require './calculator'

# we are describing the method #add of the class Calculator
describe Calculator, '#add' do
  context "with an empty string" do
    it 'should return 0' do
      expect(Calculator.add('0')).to eq(0)
    end
  end

  context "when string is a number" do
    it 'should return the number' do
      expect(Calculator.add('1')).to eq(1)
      expect(Calculator.add('33')).to eq(33)
    end
  end

  context "when string is not a number" do
    it 'should return 0' do
      expect(Calculator.add('dasfghsdfhjs')).to eq(0)
    end
  end

  context "when the string is a list of comma-separated numbers" do
    it 'should return the sum' do
      expect(Calculator.add('1,2,3')).to eq(1 + 2 + 3)
    end
  end

  context "when the string is ','" do
    it 'should return 0' do
      expect(Calculator.add(',')).to eq(0)
    end
  end

  context "when the string contains elements that are not a number" do
    it 'should sum only the numbers' do
      expect(Calculator.add('1,pippo,3')).to eq(4)
    end
  end
end
