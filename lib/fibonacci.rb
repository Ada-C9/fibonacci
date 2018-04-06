# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  if n == nil || n < 0
    raise ArgumentError
  end

  if n == 0
    return 0
  end

  if n == 1
    return 1
  end

  begin_num = 0
  next_num = 1
  number = 0

  iterations = n - 1

  iterations.times do
    number = begin_num + next_num
    begin_num = next_num
    next_num = number
  end

  return number

end
