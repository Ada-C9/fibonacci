# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError.new ("Please provide a positive integer") if n == nil || n < 0
  return 0 if n == 0
  return 1 if n <= 2
  return fibonacci(n-1) + fibonacci(n-2)
end

=begin
Time Complexity: T(n) = T(n-1) + T(n-2) which is exponential.
O(2^n)
space complexity  O(n)
=end
