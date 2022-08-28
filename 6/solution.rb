num_range = (1..100)
square_of_sum = num_range.sum ** 2
sum_of_squares = num_range.map { |n| n ** 2 } .sum
p square_of_sum - sum_of_squares
# above solution is probably not the best we can do
