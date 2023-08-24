# Problem: Take an array of numbers and returns an array with the same number of elements
#          Each element is the running total from the original array

# Input: Array of numbers
# Output: Array of numbers that are a running total of input array

# Requirements:
#            Explicit:
#              - Returned array must have same number of elements,
#              - Returned array elements must be running total
#            Implicit:
#              - Empty array as argument returns empty array
#              - One element array returns one element array as total
#              - Must return a new array

# Data Structure/ Algorithm 
#   - Create a variable `running total` and set it to an empty array 
#   - loop through the array until the end adding each element to the next element
#        - Except element at first index, the current element should be the sum of 
#          current + previous in the new array
#   - create two counters for loop, for current and one for current + 1
#        - add element of both counters and append it to running total
#        - Continue looping until current + 1 is at the end of the array
#   - Return the array 


def running_total(array)
  totals_array = []
  if array.size > 0 
    counter = 0 
    total = array[counter]
    totals_array << total
    totals_array_counter = 0

    while counter < array.size - 1 
      counter += 1
      total = (array[counter]) + (totals_array[totals_array_counter])
      totals_array << total 
      totals_array_counter += 1
    end
  end
  totals_array
end 

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
