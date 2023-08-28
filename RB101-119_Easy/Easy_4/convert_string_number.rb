# Problem: Given a string of digits, return the appropriate number as an integer.
#          Do not use any methods to convert from string to integer to achieve this.


# Input: String of a Number
# Output: String input as an Integer 

# Requirements: 
#       - Explicit:
#           - Can NOT use any methods that convert from string to integer
#           - Do not have to worry about invalid characters. Characters will be numeric
#           - Return an integer type 
#       - Implicit: 
#           - None for this question

# Data Structure/ Algorithm: 
#       -  split up the string to get each indivdual string number
#       - get the ordinance number of each string
#       - the return value will give as an indication of where that number is represented
#       - add or subtract from the return value in last step to get integer value 
#       - put the integer value into an array
#       - join the array together 
#       - return the joined array value


# Code 

def string_to_integer(num_string)
  num_integer = num_string.chars.map { |number| number.ord - 48 }
  p num_integer.inject{ |a, i| p a * 10 }
end 

string_to_integer('123')