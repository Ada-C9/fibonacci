# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError if n == nil
  raise ArgumentError if n < 0
  return 0 if n == 0
  return 1 if n == 1

counter = 1
  i = 0
  j = 1
  while counter < n
    x = i + j
    i = j
    j = x
    counter +=1
  end
  return x

end
