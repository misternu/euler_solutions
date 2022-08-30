module FiniteSeries
  # sum of natural numbers up to n
  def sum_of_natural(n)
    n * (n + 1) / 2
  end

  # sum of multiples of n up to and including m
  def multiples_sum(n, m)
    n * sum_of_natural(m/n)
  end
end
