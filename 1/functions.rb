## Common Iterative Sense Solution:

def reduce_three_and_five(n)
  (1...n).reduce(0) { |m, n| n % 3 == 0 || n % 5 == 0 ? m + n : m }
end

## Number Theory Solution:

def integer_sum(n)
  n * (n + 1) / 2
end

def multiples_sum(n, l)
  m = l/n # The number of multiples of n up to and including l
  n * integer_sum(m)
end

def math_three_and_five(n)
  multiples_sum(3, n-1) + # multiples of 3 plus
  multiples_sum(5, n-1) - # multiples of 5 minus
  multiples_sum(15, n-1) # multiples of 15 (duplicates)
end

# File kept from an old solution, see also benchmark.rb for a comparison between solutions
