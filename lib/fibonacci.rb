
require 'pry'

=begin
  SPACE COMPLEXITY:  one parameter and three local variables, regardless of input, so space complexity is constant, or O(1)

  TIME COMPLEXITY: One loop which will run a number of times equal to the value of the number passed to the method, so complexity is linear, or O(n).
=end

# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  fib_ult = 1
  fib_penult = 0
  fib_accum = 1
  if n.nil?
    raise ArgumentError.new("Nil input error.")
  elsif n < 0
    raise ArgumentError.new("Ordinal numbers can't be negative.")
  elsif n == 0
    return 0
  else
    (n - 1).times do
      fib_accum = fib_penult + fib_ult
      fib_penult = fib_ult
      fib_ult = fib_accum
    end
  end
  return fib_accum
end
