# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError if n.nil?
  raise ArgumentError if n < 0

  number = 0
  succeeding = 1
  n.times do
    temp = succeeding
    succeeding += number
    number = temp

  end
  return number
end
