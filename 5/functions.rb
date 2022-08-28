require 'prime'

def solution(n)
  # this hash will store the exponents of
  # the prime factors
  h = Hash.new(0)
  (2..n).each do |num|
    Prime.prime_division(num).each do |k, v|
      h[k] = v if v > h[k]
    end
  end
  # h.map { |k, v| k**v } .reduce(&:*)
  h.reduce(1) { |m, kv| m * kv[0]**kv[1] }
end

# def prime_factors(n)
#   Prime.prime_division(n).flat_map { |f, p| [f] * p }
# end

# def solution(n)
#   h = Hash.new(0)
#   (1..n).each do |number|
#     f = prime_factors(number)
#     f.uniq.each do |pr|
#       h[pr] = [h[pr], f.count(pr)].max
#     end
#   end
#   h.map { |k,v| k**v } .reduce(&:*)
# end
