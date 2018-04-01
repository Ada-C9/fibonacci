# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  # raise NotImplementedError
  if n == nil || n < 0
    raise ArgumentError.new
  end

  i = 0
  x = 0
  y = 1
  z = 0
  while i < n
    x = y
    y = z
    z = x + y
    i += 1
  end

  return z
end
