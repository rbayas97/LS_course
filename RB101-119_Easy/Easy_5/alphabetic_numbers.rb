# Problem: Write a method that takes an array of integers between 0-19 and return an array
#          of those integers sorted base on the english word for each number 

# input:  array of integers
# output: array of integers sorted based on english word for each number

# Requirements: 
#       - Explicit: 
#            - input is numbers 0-19
#            - output must be array of integers sorted by their english word spelling
#              order
#            - output array must contain 20 numbers, 0 - 19 
#       - Implicit: none for this question



# Data Structure/ Algorithm
#       - create an an empty array and set it to `sorted_array`
#       - make a hash with key as each element of the input array, and actual word
#         of number 'as a string' as the value 
#       - we will now want to sort_by the hash by the value so call the sort method on the
#         hash and sort by value 
#       - use the return value of sort and call each on it to then take the 1st element
#         and append it to the sorted_array
#       - return the sorted array 



def