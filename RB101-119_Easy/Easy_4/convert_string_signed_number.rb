# Problem: Given a string of digits, return the appropriate number as an integer.
#          Do not use any methods to convert from string to integer to achieve this.


# Input: String of a Number
# Output: String input as an Integer 

# Requirements: 
#       - Explicit:
#           - Can NOT use any methods that convert from string to integer
#           - (-) sign should return negative number if first character is negative
#           - (+) sign should return positive number if first character is positive
#           - No sign given should return a positive number
#           - Return an integer type 
#       - Implicit: 
#           - No implicit requirements for this 

# Data Structure/ Algorithm: 
#       -  split up the string to get each indivdual string number
#       - get the ordinance number of each string
#       - the return value will give as an indication of where that number is represented
#       - add or subtract from the return value in last step to get integer value 
#       - put the integer value into an array
#       - join the array together 
#       - if first index of string array is a (-) sign multiply the joined number by -1
#       - return the number


# Code 

def string_to_integer(num_string)
  num_integer = num_string.chars.map { |number| number.ord - 48 }
  converted_number = num_integer.inject{ |a, i| a * 10 + i}
end 


def string_to_signed_integer(string)
  string_array = string.chars
  
  if string_array[0] == '+' || string_array[0] == '-'
    string_array.shift
    number = string_to_integer(string_array.join)
  else 
    number = string_to_integer(string)
  end 

  if string[0] == '-'
    number *= -1 
  else 
    number 
  end 
end 

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100