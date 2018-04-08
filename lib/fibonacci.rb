# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError if n.class != Integer
  raise ArgumentError if n < 0
  return n if n < 2

  i = 1
  n1 = 0
  n2 = 1

  while i < n
    fibonacci = n1 + n2
    n1 = n2
    n2 = fibonacci
    i +=1
  end

  return fibonacci

end
