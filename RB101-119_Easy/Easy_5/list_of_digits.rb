# Problem: Write a method that takes a positive integer and returns a list of the digits
#          in the number.


# Input:  Positive Integer
# Output: An array containing the digits on the input integer

# Requirements:
#       - Explicit: 
#             - Input will always be a positive integer 
#             - Return value must be an array of integers. Each element being the 
#               digit of the number (each element in the array should be an integer)
#       - Implicit:
#             - None for this problem


# Data structure/Algorithm
#       - Create an empty array and assign it to a variable 'digits'
#       - Convert the input integer into a string so that the number is now a string
#         Assign it to a variable int_string
#       - Use the split method to seperate each character of the string into an array.
#         Assign this method return value to string_digits
#       - Loop through the string_digits array
#            - For each string number use the to_i method to convert it back to an integer
#            - Use the return  value of to_i and push that value to 'digits'
#       - returns 'digits'



def digit_list(int)
  digits = []
  int_string = int.to_s

  arr_string_digits = int_string.chars
  arr_string_digits.each do |str_num|
    digits << str_num.to_i
  end
  
  digits
end 

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true