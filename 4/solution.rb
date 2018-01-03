def is_palindrome(num)
  string = num.to_s
  string == string.reverse
end

best = 1

999.downto(100) do |a|
  lowest_b = [100, best/a].max
  (a-1).downto(lowest_b) do |b|
    iterations += 1
    num = a * b
    if is_palindrome(num) && num > best
      best = num
    end
  end
end

p best
