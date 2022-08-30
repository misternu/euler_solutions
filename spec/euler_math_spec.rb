require_relative '../lib/euler_math'

RSpec.describe EulerMath do
  describe '#sum_of_natural' do
    it 'sums the natural numbers up to n' do
      expect(subject.sum_of_natural(10)).to eq 55
      expect(subject.sum_of_natural(100)).to eq 5050
    end
  end

  describe '#multiples_sum' do
    it 'sums the multiples of n up to and including m' do
      expect(subject.multiples_sum(3, 9)).to eq 18
      expect(subject.multiples_sum(3, 1000)).to eq 166833
    end
  end
end
