# Problem: Write a method named include? that takes two arguments (array, and value).
#          Method should return a boolean value based on whethere the argument value 
#          is included in the array.

# Inputs: Array, and integer
# Output: True or False 

# Requirements:
#       - Explicit: 
#            - Do NOT use Array#include? method in your solution.
#            - Return value should be a true or false value based on whether the input
#              value is included in the array argument.
#       - Implicit:
#            - nil can be used as an input value. Should return true if the array contains
#              nil and false if it doesn't
#            - empty array should return false if there is any input value in the second
#              argument.

# Data Structure/ Algorithm
#       - Use the any? method to check whether any of the elements in the array
#         argument are equal to the input integer.
#       - The any? method will return a boolean value, true or false
#           - This method will then act as if whether the input integer is in the 
#             input array. Are any of the elements in the array equal to the input?
#           - True means that it is included, false means it is not.
#

def include?(arr, search_value)
  arr.any? { |element| element == search_value}
end 

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false