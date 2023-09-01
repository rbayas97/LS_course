# Problem: Write a method that determines ASCII string value of a string passed in
#          as an argument. The ASCII string value is the sum the ASCII values for each
#          character in the string

# Input: A string 
# Output: Integer- representing the total of all the the ascii values for each character
#         of our input string. 


# Requirements: 
#        - Explicit:
#             - ASCII string value must be sum of values must be ASCII value
#               of each character 
#             - Can use String#ord to determine ASCII value of a character
#        - Implicit: 
#             - Empty string returns 0 
#             - Space characters should return value of 0 even within a string



# Data Structure/ Algorithm
#        - Create a variable sum and set it to 0
#        - Break up the string into an array with each character as the element
#        - iterate through the array and use String#ord to get the value of each character
#             - add each value to sum
#        - return the final sum after finishing looping through the array




