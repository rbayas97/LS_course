# Problem: Write a method that takes an array of integers, mutiplies all of the numbers
#          together, divides the result by the number of entries in the array, and then
#          prints the result rounded to 3 decimal places. 

# Input:  Array of integers
# Output: Print result of calculation rounded to 3 decimal places (method returns nil)

# Requirements
#      - Explicit:
#           - Assume array is non-empty
#           - Must output calculation to 3 decimal places
#           - Multiply all numbers together, divide by entries in array, the then print
#             result to 3 decimal places
#      - Implicit:
#           - Array with one entry must still output to three decimal places


# Data Structure/ Algorithm
#      - Create a variable `multiplication_total` and set it to 1 
#      - Loop through the array
#           - Reassign `multiplication_total` to return value of total * current array element
#      - Create a variable `entries` and assign it to array.length.to_f return value
#      - Divide multiplication_total / entrie. Use this return value to round using round
#         - assign this to variable name `average`
#      - Invoke puts method passing in `average` as the argument

def show_multiplicative_average(arr)
  multiplication_total = 1

  arr.each do |num|
    multiplication_total *= num
  end 

  entries = arr.length.to_f

  average = (multiplication_total/entries)
  puts sprintf('%.3f', average)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
