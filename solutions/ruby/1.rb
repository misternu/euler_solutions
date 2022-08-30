require_relative '../../lib/euler_math'

def solve(n)
  EulerMath.multiples_sum(3, n) + # multiples of 3 plus
  EulerMath.multiples_sum(5, n) - # multiples of 5 minus
  EulerMath.multiples_sum(15, n) # multiples of 15 (duplicates)
end

p solve(999)
