# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  a = 0
  b = 1
  raise ArgumentError if n == nil || n < 0
  return 0 if n == 0
  return 1 if n == 1

  fib_num = 0
  (n-1).times do
    fib_num = a + b
    a = b
    b = fib_num
  end

  return fib_num
  raise NotImplementedError
end

def fibonacci(n)
  raise ArgumentError if n == nil || n < 0

  a = 0
  b = 1
  fib_num = 1

  return 0 if n == 0

  fib_num = 1
  (n-1).times do
    fib_num = a + b
    a = b
    b = fib_num
  end

  return fib_num
  raise NotImplementedError
end
