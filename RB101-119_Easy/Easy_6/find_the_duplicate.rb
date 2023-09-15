# Problem: Given an unordered array as an argument, write a method that will find 
#          and return the duplicate value in the array.

# Input:  Unordered array
# Output: Duplicate value in the array (Integer)


# Requirements:
#        - Explicit
#             - Return value will be the duplicate value (integer) in the array.
#             - There will be exactly one duplicate value in the input array.
#               Every other value occurs once.
#        - Implicit
#             - None for this problem


# Data Structure/ Algorithm
#        - Loop through the array
#        - Use the select method to specify a condition that will find the element
#          that occurs twice in the array
#            - Use the count method and check if element count in the array is 2
#        - Store this return value in variable named `duplicate_number'
#        - The select method will return an array with the condition that should be 
#          the number that is duplicated in the array. Return either index of that
#          array by referencing index 0 or 1
#        


