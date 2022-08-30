module EulerMath
  # sum of natural numbers up to n
  def self.sum_of_natural(n)
    n * (n + 1) / 2
  end

  # sum of multiples of n up to and including m
  def self.multiples_sum(n, m)
    n * sum_of_natural(m/n)
  end
end
