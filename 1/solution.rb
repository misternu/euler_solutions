require_relative '../lib/euler_math'

def math_three_and_five(n)
  EulerMath.multiples_sum(3, n) + # multiples of 3 plus
  EulerMath.multiples_sum(5, n) - # multiples of 5 minus
  EulerMath.multiples_sum(15, n) # multiples of 15 (duplicates)
end

p math_three_and_five(999)
