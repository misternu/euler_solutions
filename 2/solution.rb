def fibonacci
  Enumerator.new do |e|
    a = 1
    b = 2

    loop do
      e << a
      a, b = b, a + b
    end
  end
end

def sum_even_fibonacci(max)
  fibonacci.lazy
  .select(&:even?)
  .take_while { |n| n < max }
  .reduce(&:+)
end
