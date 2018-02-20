def solution(max)
  square_of_sum = ((max * (max + 1)) / 2)**2
  sum_of_squares = ((2 * max + 1) * (max + 1)) / 6
  square_of_sum - sum_of_squares
end

def linear_solution(max)
  sum_of_squares = (1..max).map do |n|
    n**2
  end .reduce(&:+)
  square_of_sum = (1..max).reduce(&:+)**2
  square_of_sum - sum_of_squares
end
