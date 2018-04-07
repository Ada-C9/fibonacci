# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n.nil?
    raise ArgumentError.new("Invalid")
  elsif n < 0
    raise ArgumentError.new("Invalid")
  end

  return 0 if n == 0

  num_one = 0
  num_two = 1
  fib_n = 1

  count = n - 1

  count.times do
    fib_n = num_one + num_two
    num_one = num_two
    num_two = fib_n
  end

  return fib_n
end
