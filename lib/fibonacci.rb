# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  return 1 if n == 1
  return 0 if n == 0
  if n == nil || n < 0
    raise ArgumentError.new("nil")
  end
  num1 = 0
  num2 = 1
  fibonacci_num = 0
  (n - 1).times do
    fibonacci_num = (num1 + num2)
    num1 = num2
    num2 = fibonacci_num
  end
  return fibonacci_num
end
