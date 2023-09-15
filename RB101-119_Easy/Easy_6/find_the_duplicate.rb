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


def find_dup(arr)
  duplicate = arr.select { |element| arr.count(element) ==  2 }
  duplicate[0]
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
