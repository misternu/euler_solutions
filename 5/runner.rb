require_relative 'solution'
require 'optparse'

options = {}
parser = OptionParser.new do |opts|
  opts.banner = '-b for benchmark'
  opts.on('-b', '--benchmark', 'Run Benchmark') do
    options[:benchmark] = true
  end
end

parser.parse!

if options[:benchmark]
  require 'benchmark'
  puts(Benchmark.measure { solution(100_000) })
  puts(Benchmark.measure { solution(200_000) })
  puts(Benchmark.measure { solution(300_000) })
  puts(Benchmark.measure { solution(400_000) })
else
  puts parser.banner
  # Normal solution
  p solution(20)
end
