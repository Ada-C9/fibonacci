# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  # input: int n      e.g. 6
  # output: the nth fibonacci number    e.g. 8

  # variables
    # count: keep track of iterations until we reach n
    # first_num
    # second_num
    # result: nth fibonacci (return)

  first_num = 0
  second_num = 1
  result = 0

  if n == nil || n < 0
    raise ArgumentError.new("Must be an integer greater than 0.")
  elsif n == first_num
    return first_num
  elsif n == second_num
    return second_num
  end

  count = 2
  while count <= n # 6<=6
    result = first_num + second_num  # 3+5=8
    first_num = second_num #5
    second_num = result #8
    count += 1 #7
  end
  return result

end
