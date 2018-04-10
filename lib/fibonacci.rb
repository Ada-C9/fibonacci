# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n == nil
    raise ArgumentError.new()
  end
  if n < 0
    raise ArgumentError.new()
  end

  initial = 0
  secondary = 1
  fib = 0
  if n > 1
    n = n-1
  end

  until n == 0
    fib = initial+secondary
    initial = secondary
    secondary = fib
    n = n - 1
  end

  return fib

end
