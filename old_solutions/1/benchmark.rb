require 'benchmark'
require_relative 'functions'

# much larger number, for the sake of benchmarking
n = 10000000

Benchmark.bm do |x|
  puts "Iterative solution"
  x.report { reduce_three_and_five(n) }
  puts "Number theory solution"
  x.report { math_three_and_five(n) }
end
