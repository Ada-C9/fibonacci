# Thought process:
# step 1: create a varibale to store the fibonacci series until nth index
# step 2: return the last value of nth index
# Time complexity: O(n)
# Space complexity: O(n)

def fibonacci(n)
  raise ArgumentError.new if n.nil? || n < 0
  return n if n == 0

  array = [0, 1]
  i = 2
  while i <= n
    array[i] = array[i - 1] + array[i - 2]
    i += 1
  end

  return array.last
end
