module Fibonacci
  # returns a fibonacci enumerator
  def fibonacci
    Enumerator.new do |e|
      a, b = 1, 1
      loop do
        e << a
        a, b = b, a + b
      end
    end
  end

  def lazy_fibonacci
    fibonacci.lazy
  end
end
