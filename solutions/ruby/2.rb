require_relative '../../lib/euler_math'

def solve(n)
  EulerMath.lazy_fibonacci
    .select { |m| m % 2 == 0 }
    .take_while { |m| m < n }
    .sum
end

p solve(4_000_000)
