def primes
  Enumerator.new do |e|
    primes = []
    (2..Float::INFINITY).each do |n|
      if primes.none? { |p| n % p == 0 }
        primes << n
        e << n
      end
    end
  end
end

def prime_factors(n)
  factors = []
  primes.lazy.take_while { |x| x*x < n } .each do |prime|
    while n % prime == 0
      factors << prime
      n = n / prime
    end
  end
  factors << n if n > 1
  factors
end
