def solution(max)
  sum_of_squares = (1..max).map do |n|
    n**2
  end .reduce(&:+)
  square_of_sum = (1..max).reduce(&:+)**2
  square_of_sum - sum_of_squares
end
