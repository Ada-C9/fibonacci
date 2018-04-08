# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError.new("Must be positive int") if !n.is_a?(Integer) || n < 0

  n < 2 ? n : fibonacci(n-1) + fibonacci(n-2)
end
