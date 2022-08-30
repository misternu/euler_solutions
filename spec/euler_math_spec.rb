require_relative '../lib/euler_math'

RSpec.describe EulerMath do
  describe 'FiniteSeries' do
    describe '#sum_of_natural' do
      it 'sums the natural numbers up to n' do
        expect(described_class.sum_of_natural(10)).to eq 55
        expect(described_class.sum_of_natural(100)).to eq 5050
      end
    end

    describe '#multiples_sum' do
      it 'sums the multiples of n up to and including m' do
        expect(described_class.multiples_sum(3, 9)).to eq 18
        expect(described_class.multiples_sum(3, 1000)).to eq 166833
      end
    end
  end

  describe 'Fibonacci' do
    describe '#fibonacci' do
      it 'enumerates the fibonacci sequence as defined by the problem' do
        expect(described_class.fibonacci.take(11)).to eq [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
      end
    end
  end
end
