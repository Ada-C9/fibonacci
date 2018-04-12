
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
