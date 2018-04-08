# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  raise ArgumentError.new('Input must be a positive integer') if n.class != Integer || n < 0


  return 0 if n == 0
  return 1 if n == 1

  value_A = 1
  value_B = 1
  value_C = 0
  counter = 2

  until counter == n
    value_C = value_B + value_A
    value_A = value_B
    value_B = value_C
    counter += 1
  end

  return value_C

end
