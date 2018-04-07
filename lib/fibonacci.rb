# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

def fibonacci(num)
  raise ArgumentError.new unless num.is_a? Integer
  raise ArgumentError.new if num < 0

  fib = 0
  first = 0
  second = 1

  return num if num <= 1

  (num-1).times do
    fib = first + second
    first = second
    second = fib
  end

  return fib
end
