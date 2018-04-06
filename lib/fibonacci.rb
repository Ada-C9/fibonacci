# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n == nil
    raise ArgumentError.new('Cannot enter nil value.')
  elsif n < 0
    raise ArgumentError.new('Must enter a number greater than or equal to zero.')
  end

  fib = 0
  fib_zero = 0
  fib_one = 1

  if n == 0
    fib = fib_zero
  elsif n == 1
    fib = fib_one
  elsif n > 1
    fib_prev = fib_zero + fib_one
    fib_next_prev = fib_one
    fib = fib_prev
    position = 2
    while position < n
      fib = fib_prev + fib_next_prev
      fib_next_prev = fib_prev
      fib_prev = fib
      position += 1
    end
  end

  return fib
end
