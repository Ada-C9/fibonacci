# Computes the nth fibonacci number in the series starting with 0.

# Recursive solution has linear space complexity or O(n): memory required is proportional to the number of function calls to f(n-1)
# Recursive solution has factorial time complexity or O(2^n): the number of function calls (ie, operations) nearly doubles with each increase in input

# Iterative solution has constant space complexity or O(1): the amount of memory taken is constant regardless of input size
# Iterative solution has linear time complexity or O(n): the number of operations (ie, runs of the loop) are equivalent to the size of the unput

def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError
  end
# base cases are 0 and 1 (0th place is 0, 1st place is 1)
  if n < 2
    return n
  end

  counter = 1
  left = 0
  right = 1

  while counter < n
    sum = left + right
    left = right
    right = sum
    counter += 1
  end
  return sum
end

# def fibonacci(n)
# if n == nil || n < 0
#   raise ArgumentError
# end
# # base cases are 0 and 1 (0th place is 0, 1st place is 1)
#   if n < 2
#     return n
#   end
#   return fibonacci(n - 1) + fibonacci(n - 2)
# end
