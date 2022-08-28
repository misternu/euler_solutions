require_relative '../functions'

describe 'Solution' do
  describe '#primes' do
    it 'enumerates prime numbers' do
      expect(primes.take(10)).to eq [2,3,5,7,11,13,17,19,23,29]
    end
  end

  describe '#prime_factors' do
    it 'returns the prime factors of a number' do
      expect(prime_factors(13195)).to eq [5, 7, 13, 29]
    end
    it 'returns the correct solution' do
      expect(prime_factors(600851475143)).to eq [71, 839, 1471, 6857]
    end
  end
end
