# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError.new
  end

  i = 0
  j = 1
  x = 0

  if n == 1
    return 1
  elsif n == 0
    return 0
  else
    (n - 1).times do
      x = i + j
      i = j
      j = x
    end
    return x
  end
end
