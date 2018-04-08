# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  if n == 0 || n == 1
    fib_num = n
  elsif n == nil || n < 0
    raise ArgumentError
  else
    fib_num = 0
    last_num = 1
    twice_last_num = 0
    n -= 1
    n.times do |i|
      fib_num = last_num + twice_last_num
      twice_last_num = last_num
      last_num = fib_num
    end
  end
  return fib_num
end
