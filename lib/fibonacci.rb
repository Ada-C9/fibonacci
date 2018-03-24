# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8


def fibonacci(n)

  raise ArgumentError.new if n.nil? || n < 0

  one_back = 1
  two_back = 0

  answer = n

  (n - 1).times do

    answer = one_back + two_back

    two_back = one_back
    one_back = answer

  end

  return answer

end


# def fibonacci(n)
#
#   raise ArgumentError.new if n.nil? || n < 0
#
#   list = [0, 1]
#
#   (n - 1).times do |num|
#     value = list[num] + list[num + 1]
#     list << value
#   end
#
#   return list[n]
#
# end
