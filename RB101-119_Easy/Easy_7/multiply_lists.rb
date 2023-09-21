# Problem:  Write a method that takes two Array arguments in which each array contains a list
#           of integers and return a new array that contains the product of each pair
#           according to their index position. Assume both arrays contain the same
#           number of elements

# Input:  Two arrays that contain a list of numbers
# Output: Single array that contains the product of each pair of element with the same 
#         index from the input arrays


# Requirements:
#      - Explicit
#           - Input arrays will be of the same length
#           - Must return a new array with the product of the same index pair of the input
#           - Return array must have the same number of elements as either of the two
#             input arrays
#      - Implicit
#           - None 


# Data Structure/ Algorithm
#      - Create a variable named multiplied_arr and assign it to an empty array
#      - Create a variable named counter and assign it to 0 
#      - Create a loop with the `loop` method
#      - Use the << operator to append the value of the first_arr[counter]
#        * second_arr[counter] to `multiplied_arr`.
#      - Increase the counter by 1
#      - Break out of the loop when counter is equal to the size of either first_arr
#        or second_arr
#      - Return multiplied_arr
