require_relative '../solution'

RSpec.describe 'Solution' do
  describe '#fibonacci' do
    it 'returns an enumerator' do
      expect(fibonacci).to be_a Enumerator
    end
    it 'enumerates the fibonacci sequence as defined by the problem' do
      expect(fibonacci.take(10)).to eq [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    end
  end

  describe '#sum_even_fibonacci' do
    it 'returns the correct answer' do
      expect(sum_even_fibonacci(4_000_000)).to eq 4613732
    end
  end
end
