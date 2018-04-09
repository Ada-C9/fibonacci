# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  array = [0, 1]

  if n == nil || n < 0
    raise ArgumentError.new
  elsif n < 3 && n >= 0
    return n
  end

  (n - 1).times do
    array << (array[(array.length - 1)] + array[(array.length - 2)])
  end

  return array[(array.length - 1)]
end
