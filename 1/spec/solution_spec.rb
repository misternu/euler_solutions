require_relative '../functions'

RSpec.describe 'Solution' do
  describe '#reduce_three_and_five' do
    it 'gets the right answer' do
      expect(reduce_three_and_five(1000)).to eq 233168
    end
  end

  describe '#integer_sum' do
    it 'sums the integers up to n' do
      expect(integer_sum(10)).to eq 55
      expect(integer_sum(100)).to eq 5050
    end
  end

  describe '#multiples_sum' do
    it 'sums the multiples of n up to l' do
      expect(multiples_sum(3, 9)).to eq 18
      expect(multiples_sum(3, 1000)).to eq 166833
    end
  end

  describe '#math_three_and_five' do
    it 'gets the right answer' do
      expect(math_three_and_five(1000)).to eq 233168
    end
  end
end
