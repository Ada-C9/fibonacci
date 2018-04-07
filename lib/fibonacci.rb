# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
require "pry"

def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  raise ArgumentError if n == nil || n < 0

# the 1st, 2nd places are already solved by if statements, so we can start with the 3rd place
  count = n - 2
  temp1 = 0
  temp2 = 1

  while count > -1
    fib_num = temp1 + temp2

      if count > 0
        temp1 = temp2
        temp2 = fib_num
      end

    count -= 1
  end

  return fib_num


end
